{-
   World News API

   The world's news wrapped into a single API.

   OpenAPI Version: 3.0.0
   World News API API version: 1.1
   Contact: mail@worldnewsapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : WorldNews.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module WorldNews.Model where

import WorldNews.Core
import WorldNews.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** Analyze
newtype Analyze = Analyze { unAnalyze :: Bool } deriving (P.Eq, P.Show)

-- ** ApiKey
newtype ApiKey = ApiKey { unApiKey :: Text } deriving (P.Eq, P.Show)

-- ** Authors
newtype Authors = Authors { unAuthors :: Text } deriving (P.Eq, P.Show)

-- ** EarliestPublishDate
newtype EarliestPublishDate = EarliestPublishDate { unEarliestPublishDate :: Text } deriving (P.Eq, P.Show)

-- ** Entities
newtype Entities = Entities { unEntities :: Text } deriving (P.Eq, P.Show)

-- ** ExtractNews2
newtype ExtractNews2 = ExtractNews2 { unExtractNews2 :: Bool } deriving (P.Eq, P.Show)

-- ** Language
newtype Language = Language { unLanguage :: Text } deriving (P.Eq, P.Show)

-- ** LatestPublishDate
newtype LatestPublishDate = LatestPublishDate { unLatestPublishDate :: Text } deriving (P.Eq, P.Show)

-- ** Location
newtype Location = Location { unLocation :: Text } deriving (P.Eq, P.Show)

-- ** LocationFilter
newtype LocationFilter = LocationFilter { unLocationFilter :: Text } deriving (P.Eq, P.Show)

-- ** MaxSentiment
newtype MaxSentiment = MaxSentiment { unMaxSentiment :: Double } deriving (P.Eq, P.Show)

-- ** MinSentiment
newtype MinSentiment = MinSentiment { unMinSentiment :: Double } deriving (P.Eq, P.Show)

-- ** NewsSources
newtype NewsSources = NewsSources { unNewsSources :: Text } deriving (P.Eq, P.Show)

-- ** Number
newtype Number = Number { unNumber :: Int } deriving (P.Eq, P.Show)

-- ** Offset
newtype Offset = Offset { unOffset :: Int } deriving (P.Eq, P.Show)

-- ** ParamText
newtype ParamText = ParamText { unParamText :: Text } deriving (P.Eq, P.Show)

-- ** Prefix
newtype Prefix = Prefix { unPrefix :: Text } deriving (P.Eq, P.Show)

-- ** Sort
newtype Sort = Sort { unSort :: E'Sort } deriving (P.Eq, P.Show)

-- ** SortDirection
newtype SortDirection = SortDirection { unSortDirection :: E'SortDirection } deriving (P.Eq, P.Show)

-- ** SourceCountries
newtype SourceCountries = SourceCountries { unSourceCountries :: Text } deriving (P.Eq, P.Show)

-- ** SubDomain
newtype SubDomain = SubDomain { unSubDomain :: Bool } deriving (P.Eq, P.Show)

-- ** Url
newtype Url = Url { unUrl :: Text } deriving (P.Eq, P.Show)

-- * Models


-- ** ExtractLinksResponse
-- | ExtractLinksResponse
data ExtractLinksResponse = ExtractLinksResponse
  { extractLinksResponseNewsLinks :: !(Maybe [Text]) -- ^ "news_links"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON ExtractLinksResponse
instance A.FromJSON ExtractLinksResponse where
  parseJSON = A.withObject "ExtractLinksResponse" $ \o ->
    ExtractLinksResponse
      <$> (o .:? "news_links")

-- | ToJSON ExtractLinksResponse
instance A.ToJSON ExtractLinksResponse where
  toJSON ExtractLinksResponse {..} =
   _omitNulls
      [ "news_links" .= extractLinksResponseNewsLinks
      ]


-- | Construct a value of type 'ExtractLinksResponse' (by applying it's required fields, if any)
mkExtractLinksResponse
  :: ExtractLinksResponse
mkExtractLinksResponse =
  ExtractLinksResponse
  { extractLinksResponseNewsLinks = Nothing
  }

-- ** ExtractNewsResponse
-- | ExtractNewsResponse
data ExtractNewsResponse = ExtractNewsResponse
  { extractNewsResponseTitle :: !(Maybe Text) -- ^ "title"
  , extractNewsResponseText :: !(Maybe Text) -- ^ "text"
  , extractNewsResponseUrl :: !(Maybe Text) -- ^ "url"
  , extractNewsResponseImage :: !(Maybe Text) -- ^ "image"
  , extractNewsResponseAuthor :: !(Maybe Text) -- ^ "author"
  , extractNewsResponseLanguage :: !(Maybe Text) -- ^ "language"
  , extractNewsResponseSourceCountry :: !(Maybe Text) -- ^ "source_country"
  , extractNewsResponseSentiment :: !(Maybe Double) -- ^ "sentiment"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON ExtractNewsResponse
instance A.FromJSON ExtractNewsResponse where
  parseJSON = A.withObject "ExtractNewsResponse" $ \o ->
    ExtractNewsResponse
      <$> (o .:? "title")
      <*> (o .:? "text")
      <*> (o .:? "url")
      <*> (o .:? "image")
      <*> (o .:? "author")
      <*> (o .:? "language")
      <*> (o .:? "source_country")
      <*> (o .:? "sentiment")

-- | ToJSON ExtractNewsResponse
instance A.ToJSON ExtractNewsResponse where
  toJSON ExtractNewsResponse {..} =
   _omitNulls
      [ "title" .= extractNewsResponseTitle
      , "text" .= extractNewsResponseText
      , "url" .= extractNewsResponseUrl
      , "image" .= extractNewsResponseImage
      , "author" .= extractNewsResponseAuthor
      , "language" .= extractNewsResponseLanguage
      , "source_country" .= extractNewsResponseSourceCountry
      , "sentiment" .= extractNewsResponseSentiment
      ]


-- | Construct a value of type 'ExtractNewsResponse' (by applying it's required fields, if any)
mkExtractNewsResponse
  :: ExtractNewsResponse
mkExtractNewsResponse =
  ExtractNewsResponse
  { extractNewsResponseTitle = Nothing
  , extractNewsResponseText = Nothing
  , extractNewsResponseUrl = Nothing
  , extractNewsResponseImage = Nothing
  , extractNewsResponseAuthor = Nothing
  , extractNewsResponseLanguage = Nothing
  , extractNewsResponseSourceCountry = Nothing
  , extractNewsResponseSentiment = Nothing
  }

-- ** GeoCoordinatesResponse
-- | GeoCoordinatesResponse
data GeoCoordinatesResponse = GeoCoordinatesResponse
  { geoCoordinatesResponseLatitude :: !(Double) -- ^ /Required/ "latitude"
  , geoCoordinatesResponseLongitude :: !(Double) -- ^ /Required/ "longitude"
  , geoCoordinatesResponseCity :: !(Maybe Text) -- ^ "city"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GeoCoordinatesResponse
instance A.FromJSON GeoCoordinatesResponse where
  parseJSON = A.withObject "GeoCoordinatesResponse" $ \o ->
    GeoCoordinatesResponse
      <$> (o .:  "latitude")
      <*> (o .:  "longitude")
      <*> (o .:? "city")

-- | ToJSON GeoCoordinatesResponse
instance A.ToJSON GeoCoordinatesResponse where
  toJSON GeoCoordinatesResponse {..} =
   _omitNulls
      [ "latitude" .= geoCoordinatesResponseLatitude
      , "longitude" .= geoCoordinatesResponseLongitude
      , "city" .= geoCoordinatesResponseCity
      ]


-- | Construct a value of type 'GeoCoordinatesResponse' (by applying it's required fields, if any)
mkGeoCoordinatesResponse
  :: Double -- ^ 'geoCoordinatesResponseLatitude' 
  -> Double -- ^ 'geoCoordinatesResponseLongitude' 
  -> GeoCoordinatesResponse
mkGeoCoordinatesResponse geoCoordinatesResponseLatitude geoCoordinatesResponseLongitude =
  GeoCoordinatesResponse
  { geoCoordinatesResponseLatitude
  , geoCoordinatesResponseLongitude
  , geoCoordinatesResponseCity = Nothing
  }

-- ** News
-- | News
-- News
-- 
-- A news entry.
data News = News
  { newsId :: !(Maybe Int) -- ^ "id"
  , newsTitle :: !(Maybe Text) -- ^ "title"
  , newsText :: !(Maybe Text) -- ^ "text"
  , newsSummary :: !(Maybe Text) -- ^ "summary"
  , newsUrl :: !(Maybe Text) -- ^ "url"
  , newsImage :: !(Maybe Text) -- ^ "image"
  , newsPublishDate :: !(Maybe Text) -- ^ "publish_date"
  , newsAuthor :: !(Maybe Text) -- ^ "author"
  , newsLanguage :: !(Maybe Text) -- ^ "language"
  , newsSourceCountry :: !(Maybe Text) -- ^ "source_country"
  , newsSentiment :: !(Maybe Double) -- ^ "sentiment"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON News
instance A.FromJSON News where
  parseJSON = A.withObject "News" $ \o ->
    News
      <$> (o .:? "id")
      <*> (o .:? "title")
      <*> (o .:? "text")
      <*> (o .:? "summary")
      <*> (o .:? "url")
      <*> (o .:? "image")
      <*> (o .:? "publish_date")
      <*> (o .:? "author")
      <*> (o .:? "language")
      <*> (o .:? "source_country")
      <*> (o .:? "sentiment")

-- | ToJSON News
instance A.ToJSON News where
  toJSON News {..} =
   _omitNulls
      [ "id" .= newsId
      , "title" .= newsTitle
      , "text" .= newsText
      , "summary" .= newsSummary
      , "url" .= newsUrl
      , "image" .= newsImage
      , "publish_date" .= newsPublishDate
      , "author" .= newsAuthor
      , "language" .= newsLanguage
      , "source_country" .= newsSourceCountry
      , "sentiment" .= newsSentiment
      ]


-- | Construct a value of type 'News' (by applying it's required fields, if any)
mkNews
  :: News
mkNews =
  News
  { newsId = Nothing
  , newsTitle = Nothing
  , newsText = Nothing
  , newsSummary = Nothing
  , newsUrl = Nothing
  , newsImage = Nothing
  , newsPublishDate = Nothing
  , newsAuthor = Nothing
  , newsLanguage = Nothing
  , newsSourceCountry = Nothing
  , newsSentiment = Nothing
  }

-- ** NewsArticle
-- | NewsArticle
data NewsArticle = NewsArticle
  { newsArticleId :: !(Maybe Int) -- ^ "id"
  , newsArticleTitle :: !(Maybe Text) -- ^ "title"
  , newsArticleText :: !(Maybe Text) -- ^ "text"
  , newsArticleSummary :: !(Maybe Text) -- ^ "summary"
  , newsArticleUrl :: !(Maybe Text) -- ^ "url"
  , newsArticleImage :: !(Maybe Text) -- ^ "image"
  , newsArticlePublishDate :: !(Maybe Text) -- ^ "publish_date"
  , newsArticleAuthor :: !(Maybe Text) -- ^ "author"
  , newsArticleLanguage :: !(Maybe Text) -- ^ "language"
  , newsArticleSourceCountry :: !(Maybe Text) -- ^ "source_country"
  , newsArticleSentiment :: !(Maybe Double) -- ^ "sentiment"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON NewsArticle
instance A.FromJSON NewsArticle where
  parseJSON = A.withObject "NewsArticle" $ \o ->
    NewsArticle
      <$> (o .:? "id")
      <*> (o .:? "title")
      <*> (o .:? "text")
      <*> (o .:? "summary")
      <*> (o .:? "url")
      <*> (o .:? "image")
      <*> (o .:? "publish_date")
      <*> (o .:? "author")
      <*> (o .:? "language")
      <*> (o .:? "source_country")
      <*> (o .:? "sentiment")

-- | ToJSON NewsArticle
instance A.ToJSON NewsArticle where
  toJSON NewsArticle {..} =
   _omitNulls
      [ "id" .= newsArticleId
      , "title" .= newsArticleTitle
      , "text" .= newsArticleText
      , "summary" .= newsArticleSummary
      , "url" .= newsArticleUrl
      , "image" .= newsArticleImage
      , "publish_date" .= newsArticlePublishDate
      , "author" .= newsArticleAuthor
      , "language" .= newsArticleLanguage
      , "source_country" .= newsArticleSourceCountry
      , "sentiment" .= newsArticleSentiment
      ]


-- | Construct a value of type 'NewsArticle' (by applying it's required fields, if any)
mkNewsArticle
  :: NewsArticle
mkNewsArticle =
  NewsArticle
  { newsArticleId = Nothing
  , newsArticleTitle = Nothing
  , newsArticleText = Nothing
  , newsArticleSummary = Nothing
  , newsArticleUrl = Nothing
  , newsArticleImage = Nothing
  , newsArticlePublishDate = Nothing
  , newsArticleAuthor = Nothing
  , newsArticleLanguage = Nothing
  , newsArticleSourceCountry = Nothing
  , newsArticleSentiment = Nothing
  }

-- ** SearchNewsResponse
-- | SearchNewsResponse
data SearchNewsResponse = SearchNewsResponse
  { searchNewsResponseOffset :: !(Int) -- ^ /Required/ "offset"
  , searchNewsResponseNumber :: !(Int) -- ^ /Required/ "number"
  , searchNewsResponseAvailable :: !(Int) -- ^ /Required/ "available"
  , searchNewsResponseNews :: !([NewsArticle]) -- ^ /Required/ "news"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchNewsResponse
instance A.FromJSON SearchNewsResponse where
  parseJSON = A.withObject "SearchNewsResponse" $ \o ->
    SearchNewsResponse
      <$> (o .:  "offset")
      <*> (o .:  "number")
      <*> (o .:  "available")
      <*> (o .:  "news")

-- | ToJSON SearchNewsResponse
instance A.ToJSON SearchNewsResponse where
  toJSON SearchNewsResponse {..} =
   _omitNulls
      [ "offset" .= searchNewsResponseOffset
      , "number" .= searchNewsResponseNumber
      , "available" .= searchNewsResponseAvailable
      , "news" .= searchNewsResponseNews
      ]


-- | Construct a value of type 'SearchNewsResponse' (by applying it's required fields, if any)
mkSearchNewsResponse
  :: Int -- ^ 'searchNewsResponseOffset' 
  -> Int -- ^ 'searchNewsResponseNumber' 
  -> Int -- ^ 'searchNewsResponseAvailable' 
  -> [NewsArticle] -- ^ 'searchNewsResponseNews' 
  -> SearchNewsResponse
mkSearchNewsResponse searchNewsResponseOffset searchNewsResponseNumber searchNewsResponseAvailable searchNewsResponseNews =
  SearchNewsResponse
  { searchNewsResponseOffset
  , searchNewsResponseNumber
  , searchNewsResponseAvailable
  , searchNewsResponseNews
  }


-- * Enums


-- ** E'Sort

-- | Enum of 'Text'
data E'Sort
  = E'Sort'Relevance -- ^ @"relevance"@
  | E'Sort'Publish_time -- ^ @"publish-time"@
  | E'Sort'Sentiment -- ^ @"sentiment"@
  deriving (P.Show, P.Eq, P.Typeable, P.Ord, P.Bounded, P.Enum)

instance A.ToJSON E'Sort where toJSON = A.toJSON . fromE'Sort
instance A.FromJSON E'Sort where parseJSON o = P.either P.fail (pure . P.id) . toE'Sort =<< A.parseJSON o
instance WH.ToHttpApiData E'Sort where toQueryParam = WH.toQueryParam . fromE'Sort
instance WH.FromHttpApiData E'Sort where parseQueryParam o = WH.parseQueryParam o >>= P.left T.pack . toE'Sort
instance MimeRender MimeMultipartFormData E'Sort where mimeRender _ = mimeRenderDefaultMultipartFormData

-- | unwrap 'E'Sort' enum
fromE'Sort :: E'Sort -> Text
fromE'Sort = \case
  E'Sort'Relevance -> "relevance"
  E'Sort'Publish_time -> "publish-time"
  E'Sort'Sentiment -> "sentiment"

-- | parse 'E'Sort' enum
toE'Sort :: Text -> P.Either String E'Sort
toE'Sort = \case
  "relevance" -> P.Right E'Sort'Relevance
  "publish-time" -> P.Right E'Sort'Publish_time
  "sentiment" -> P.Right E'Sort'Sentiment
  s -> P.Left $ "toE'Sort: enum parse failure: " P.++ P.show s


-- ** E'SortDirection

-- | Enum of 'Text'
data E'SortDirection
  = E'SortDirection'Asc -- ^ @"asc"@
  | E'SortDirection'Desc -- ^ @"desc"@
  deriving (P.Show, P.Eq, P.Typeable, P.Ord, P.Bounded, P.Enum)

instance A.ToJSON E'SortDirection where toJSON = A.toJSON . fromE'SortDirection
instance A.FromJSON E'SortDirection where parseJSON o = P.either P.fail (pure . P.id) . toE'SortDirection =<< A.parseJSON o
instance WH.ToHttpApiData E'SortDirection where toQueryParam = WH.toQueryParam . fromE'SortDirection
instance WH.FromHttpApiData E'SortDirection where parseQueryParam o = WH.parseQueryParam o >>= P.left T.pack . toE'SortDirection
instance MimeRender MimeMultipartFormData E'SortDirection where mimeRender _ = mimeRenderDefaultMultipartFormData

-- | unwrap 'E'SortDirection' enum
fromE'SortDirection :: E'SortDirection -> Text
fromE'SortDirection = \case
  E'SortDirection'Asc -> "asc"
  E'SortDirection'Desc -> "desc"

-- | parse 'E'SortDirection' enum
toE'SortDirection :: Text -> P.Either String E'SortDirection
toE'SortDirection = \case
  "asc" -> P.Right E'SortDirection'Asc
  "desc" -> P.Right E'SortDirection'Desc
  s -> P.Left $ "toE'SortDirection: enum parse failure: " P.++ P.show s


-- * Auth Methods

-- ** AuthApiKeyApiKey
data AuthApiKeyApiKey =
  AuthApiKeyApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyApiKey where
  applyAuthMethod _ a@(AuthApiKeyApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setQuery` toQuery ("api-key", Just secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req

-- ** AuthApiKeyHeaderApiKey
data AuthApiKeyHeaderApiKey =
  AuthApiKeyHeaderApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyHeaderApiKey where
  applyAuthMethod _ a@(AuthApiKeyHeaderApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setHeader` toHeader ("x-api-key", secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req


