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

instance Arbitrary ExtractLinksResponse where
  arbitrary = sized genExtractLinksResponse

genExtractLinksResponse :: Int -> Gen ExtractLinksResponse
genExtractLinksResponse n =
  ExtractLinksResponse
    <$> arbitraryReducedMaybe n -- extractLinksResponseNewsLinks :: Maybe [Text]
  
instance Arbitrary ExtractNewsResponse where
  arbitrary = sized genExtractNewsResponse

genExtractNewsResponse :: Int -> Gen ExtractNewsResponse
genExtractNewsResponse n =
  ExtractNewsResponse
    <$> arbitraryReducedMaybe n -- extractNewsResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsResponseSentiment :: Maybe Double
  
instance Arbitrary GeoCoordinatesResponse where
  arbitrary = sized genGeoCoordinatesResponse

genGeoCoordinatesResponse :: Int -> Gen GeoCoordinatesResponse
genGeoCoordinatesResponse n =
  GeoCoordinatesResponse
    <$> arbitrary -- geoCoordinatesResponseLatitude :: Double
    <*> arbitrary -- geoCoordinatesResponseLongitude :: Double
    <*> arbitraryReducedMaybe n -- geoCoordinatesResponseCity :: Maybe Text
  
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
    <*> arbitraryReducedMaybe n -- newsPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsSentiment :: Maybe Double
  
instance Arbitrary NewsArticle where
  arbitrary = sized genNewsArticle

genNewsArticle :: Int -> Gen NewsArticle
genNewsArticle n =
  NewsArticle
    <$> arbitraryReducedMaybe n -- newsArticleId :: Maybe Int
    <*> arbitraryReducedMaybe n -- newsArticleTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleText :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticlePublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- newsArticleSentiment :: Maybe Double
  
instance Arbitrary SearchNewsResponse where
  arbitrary = sized genSearchNewsResponse

genSearchNewsResponse :: Int -> Gen SearchNewsResponse
genSearchNewsResponse n =
  SearchNewsResponse
    <$> arbitrary -- searchNewsResponseOffset :: Int
    <*> arbitrary -- searchNewsResponseNumber :: Int
    <*> arbitrary -- searchNewsResponseAvailable :: Int
    <*> arbitraryReduced n -- searchNewsResponseNews :: [NewsArticle]
  



instance Arbitrary E'Sort where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'SortDirection where
  arbitrary = arbitraryBoundedEnum

