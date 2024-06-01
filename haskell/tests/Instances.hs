{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import WorldNews.Model
import WorldNews.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary ExtractNews200Response where
  arbitrary = sized genExtractNews200Response

genExtractNews200Response :: Int -> Gen ExtractNews200Response
genExtractNews200Response n =
  ExtractNews200Response
    <$> arbitraryReducedMaybe n -- extractNews200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponsePublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseSentiment :: Maybe Double
  
instance Arbitrary ExtractNewsLinks200Response where
  arbitrary = sized genExtractNewsLinks200Response

genExtractNewsLinks200Response :: Int -> Gen ExtractNewsLinks200Response
genExtractNewsLinks200Response n =
  ExtractNewsLinks200Response
    <$> arbitraryReducedMaybe n -- extractNewsLinks200ResponseNewsLinks :: Maybe [Text]
  
instance Arbitrary GetGeoCoordinates200Response where
  arbitrary = sized genGetGeoCoordinates200Response

genGetGeoCoordinates200Response :: Int -> Gen GetGeoCoordinates200Response
genGetGeoCoordinates200Response n =
  GetGeoCoordinates200Response
    <$> arbitraryReducedMaybe n -- getGeoCoordinates200ResponseLatitude :: Maybe Double
    <*> arbitraryReducedMaybe n -- getGeoCoordinates200ResponseLongitude :: Maybe Double
    <*> arbitraryReducedMaybe n -- getGeoCoordinates200ResponseCity :: Maybe Text
  
instance Arbitrary SearchNews200Response where
  arbitrary = sized genSearchNews200Response

genSearchNews200Response :: Int -> Gen SearchNews200Response
genSearchNews200Response n =
  SearchNews200Response
    <$> arbitraryReducedMaybe n -- searchNews200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNews :: Maybe [SearchNews200ResponseNewsInner]
  
instance Arbitrary SearchNews200ResponseNewsInner where
  arbitrary = sized genSearchNews200ResponseNewsInner

genSearchNews200ResponseNewsInner :: Int -> Gen SearchNews200ResponseNewsInner
genSearchNews200ResponseNewsInner n =
  SearchNews200ResponseNewsInner
    <$> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSentiment :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerAuthors :: Maybe [Text]
  
instance Arbitrary TopNews200Response where
  arbitrary = sized genTopNews200Response

genTopNews200Response :: Int -> Gen TopNews200Response
genTopNews200Response n =
  TopNews200Response
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNews :: Maybe [TopNews200ResponseTopNewsInner]
    <*> arbitraryReducedMaybe n -- topNews200ResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseCountry :: Maybe Text
  
instance Arbitrary TopNews200ResponseTopNewsInner where
  arbitrary = sized genTopNews200ResponseTopNewsInner

genTopNews200ResponseTopNewsInner :: Int -> Gen TopNews200ResponseTopNewsInner
genTopNews200ResponseTopNewsInner n =
  TopNews200ResponseTopNewsInner
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNews :: Maybe [TopNews200ResponseTopNewsInnerNewsInner]
  
instance Arbitrary TopNews200ResponseTopNewsInnerNewsInner where
  arbitrary = sized genTopNews200ResponseTopNewsInnerNewsInner

genTopNews200ResponseTopNewsInnerNewsInner :: Int -> Gen TopNews200ResponseTopNewsInnerNewsInner
genTopNews200ResponseTopNewsInnerNewsInner n =
  TopNews200ResponseTopNewsInnerNewsInner
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerAuthors :: Maybe [Text]
  



