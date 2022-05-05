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

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
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

instance Arbitrary InlineResponse200 where
  arbitrary = sized genInlineResponse200

genInlineResponse200 :: Int -> Gen InlineResponse200
genInlineResponse200 n =
  InlineResponse200
    <$> arbitrary -- inlineResponse200Offset :: Int
    <*> arbitrary -- inlineResponse200Number :: Int
    <*> arbitrary -- inlineResponse200Available :: Int
    <*> arbitraryReduced n -- inlineResponse200News :: [InlineResponse200News]
  
instance Arbitrary InlineResponse2001 where
  arbitrary = sized genInlineResponse2001

genInlineResponse2001 :: Int -> Gen InlineResponse2001
genInlineResponse2001 n =
  InlineResponse2001
    <$> arbitraryReducedMaybe n -- inlineResponse2001Title :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Text :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Url :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Image :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Author :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Language :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001SourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2001Sentiment :: Maybe Double
  
instance Arbitrary InlineResponse2002 where
  arbitrary = sized genInlineResponse2002

genInlineResponse2002 :: Int -> Gen InlineResponse2002
genInlineResponse2002 n =
  InlineResponse2002
    <$> arbitrary -- inlineResponse2002Latitude :: Double
    <*> arbitrary -- inlineResponse2002Longitude :: Double
    <*> arbitraryReducedMaybe n -- inlineResponse2002City :: Maybe Text
  
instance Arbitrary InlineResponse200News where
  arbitrary = sized genInlineResponse200News

genInlineResponse200News :: Int -> Gen InlineResponse200News
genInlineResponse200News n =
  InlineResponse200News
    <$> arbitraryReducedMaybe n -- inlineResponse200NewsId :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200NewsSentiment :: Maybe Double
  
instance Arbitrary News where
  arbitrary = sized genNews

genNews :: Int -> Gen News
genNews n =
  News
    <$> arbitraryReducedMaybe n -- newsId :: Maybe Int
    <*> arbitraryReducedMaybe n -- newsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsSentiment :: Maybe Double
  



instance Arbitrary E'Sort where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'SortDirection where
  arbitrary = arbitraryBoundedEnum

