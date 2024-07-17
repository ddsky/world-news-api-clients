{-
   World News API

   The world's news wrapped into a single API.

   OpenAPI Version: 3.0.0
   World News API API version: 1.3.0
   Contact: mail@worldnewsapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : WorldNews.API.News
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module WorldNews.API.News where

import WorldNews.Core
import WorldNews.MimeTypes
import WorldNews.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** News

-- *** extractNews

-- | @GET \/extract-news@
-- 
-- Extract News
-- 
-- Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
extractNews
  :: Url -- ^ "url" -  The url of the news.
  -> Analyze -- ^ "analyze" -  Whether to analyze the news (extract entities etc.)
  -> WorldNewsRequest ExtractNews MimeNoContent ExtractNews200Response MimeJSON
extractNews (Url url) (Analyze analyze) =
  _mkRequest "GET" ["/extract-news"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)
    `addQuery` toQuery ("analyze", Just analyze)

data ExtractNews  
-- | @application/json@
instance Produces ExtractNews MimeJSON


-- *** extractNewsLinks

-- | @GET \/extract-news-links@
-- 
-- Extract News Links
-- 
-- Extract news links from a news website.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
extractNewsLinks
  :: Url -- ^ "url" -  The url of the news.
  -> Analyze -- ^ "analyze" -  Whether to analyze the news (extract entities etc.)
  -> WorldNewsRequest ExtractNewsLinks MimeNoContent ExtractNewsLinks200Response MimeJSON
extractNewsLinks (Url url) (Analyze analyze) =
  _mkRequest "GET" ["/extract-news-links"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)
    `addQuery` toQuery ("analyze", Just analyze)

data ExtractNewsLinks  
-- | @application/json@
instance Produces ExtractNewsLinks MimeJSON


-- *** getGeoCoordinates

-- | @GET \/geo-coordinates@
-- 
-- Get Geo Coordinates
-- 
-- Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
getGeoCoordinates
  :: Location -- ^ "location" -  The address or name of the location.
  -> WorldNewsRequest GetGeoCoordinates MimeNoContent GetGeoCoordinates200Response MimeJSON
getGeoCoordinates (Location location) =
  _mkRequest "GET" ["/geo-coordinates"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("location", Just location)

data GetGeoCoordinates  
-- | @application/json@
instance Produces GetGeoCoordinates MimeJSON


-- *** newsWebsiteToRSSFeed

-- | @GET \/feed.rss@
-- 
-- News Website to RSS Feed
-- 
-- Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
newsWebsiteToRSSFeed
  :: Url -- ^ "url" -  The url of the news.
  -> Analyze -- ^ "analyze" -  Whether to analyze the news (extract entities etc.)
  -> WorldNewsRequest NewsWebsiteToRSSFeed MimeNoContent A.Value MimeXML
newsWebsiteToRSSFeed (Url url) (Analyze analyze) =
  _mkRequest "GET" ["/feed.rss"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)
    `addQuery` toQuery ("analyze", Just analyze)

data NewsWebsiteToRSSFeed  
-- | @application/xml@
instance Produces NewsWebsiteToRSSFeed MimeXML


-- *** newspaperFrontPages

-- | @GET \/front-pages@
-- 
-- Newspaper Front Pages
-- 
-- Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
newspaperFrontPages
  :: WorldNewsRequest NewspaperFrontPages MimeNoContent NewspaperFrontPages200Response MimeJSON
newspaperFrontPages =
  _mkRequest "GET" ["/front-pages"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data NewspaperFrontPages  

-- | /Optional Param/ "source-country" - The ISO 3166 country code of the newspaper publication.
instance HasOptionalParam NewspaperFrontPages SourceCountry where
  applyOptionalParam req (SourceCountry xs) =
    req `addQuery` toQuery ("source-country", Just xs)

-- | /Optional Param/ "source-name" - The identifier of the publication see attached list.
instance HasOptionalParam NewspaperFrontPages SourceName where
  applyOptionalParam req (SourceName xs) =
    req `addQuery` toQuery ("source-name", Just xs)

-- | /Optional Param/ "date" - The date for which the front page should be retrieved.
instance HasOptionalParam NewspaperFrontPages ParamDate where
  applyOptionalParam req (ParamDate xs) =
    req `addQuery` toQuery ("date", Just xs)
-- | @application/json@
instance Produces NewspaperFrontPages MimeJSON


-- *** retrieveNewsArticlesByIds

-- | @GET \/retrieve-news@
-- 
-- Retrieve News Articles by Ids
-- 
-- Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
retrieveNewsArticlesByIds
  :: Ids -- ^ "ids" -  A comma separated list of news ids.
  -> WorldNewsRequest RetrieveNewsArticlesByIds MimeNoContent RetrieveNewsArticlesByIds200Response MimeJSON
retrieveNewsArticlesByIds (Ids ids) =
  _mkRequest "GET" ["/retrieve-news"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("ids", Just ids)

data RetrieveNewsArticlesByIds  
-- | @application/json@
instance Produces RetrieveNewsArticlesByIds MimeJSON


-- *** searchNews

-- | @GET \/search-news@
-- 
-- Search News
-- 
-- Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchNews
  :: WorldNewsRequest SearchNews MimeNoContent SearchNews200Response MimeJSON
searchNews =
  _mkRequest "GET" ["/search-news"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchNews  

-- | /Optional Param/ "text" - The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
instance HasOptionalParam SearchNews ParamText where
  applyOptionalParam req (ParamText xs) =
    req `addQuery` toQuery ("text", Just xs)

-- | /Optional Param/ "source-countries" - A comma-separated list of ISO 3166 country codes from which the news should originate.
instance HasOptionalParam SearchNews SourceCountries where
  applyOptionalParam req (SourceCountries xs) =
    req `addQuery` toQuery ("source-countries", Just xs)

-- | /Optional Param/ "language" - The ISO 6391 language code of the news.
instance HasOptionalParam SearchNews Language where
  applyOptionalParam req (Language xs) =
    req `addQuery` toQuery ("language", Just xs)

-- | /Optional Param/ "min-sentiment" - The minimal sentiment of the news in range [-1,1].
instance HasOptionalParam SearchNews MinSentiment where
  applyOptionalParam req (MinSentiment xs) =
    req `addQuery` toQuery ("min-sentiment", Just xs)

-- | /Optional Param/ "max-sentiment" - The maximal sentiment of the news in range [-1,1].
instance HasOptionalParam SearchNews MaxSentiment where
  applyOptionalParam req (MaxSentiment xs) =
    req `addQuery` toQuery ("max-sentiment", Just xs)

-- | /Optional Param/ "earliest-publish-date" - The news must have been published after this date.
instance HasOptionalParam SearchNews EarliestPublishDate where
  applyOptionalParam req (EarliestPublishDate xs) =
    req `addQuery` toQuery ("earliest-publish-date", Just xs)

-- | /Optional Param/ "latest-publish-date" - The news must have been published before this date.
instance HasOptionalParam SearchNews LatestPublishDate where
  applyOptionalParam req (LatestPublishDate xs) =
    req `addQuery` toQuery ("latest-publish-date", Just xs)

-- | /Optional Param/ "news-sources" - A comma-separated list of news sources from which the news should originate.
instance HasOptionalParam SearchNews NewsSources where
  applyOptionalParam req (NewsSources xs) =
    req `addQuery` toQuery ("news-sources", Just xs)

-- | /Optional Param/ "authors" - A comma-separated list of author names. Only news from any of the given authors will be returned.
instance HasOptionalParam SearchNews Authors where
  applyOptionalParam req (Authors xs) =
    req `addQuery` toQuery ("authors", Just xs)

-- | /Optional Param/ "categories" - A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
instance HasOptionalParam SearchNews Categories where
  applyOptionalParam req (Categories xs) =
    req `addQuery` toQuery ("categories", Just xs)

-- | /Optional Param/ "entities" - Filter news by entities (see semantic types).
instance HasOptionalParam SearchNews Entities where
  applyOptionalParam req (Entities xs) =
    req `addQuery` toQuery ("entities", Just xs)

-- | /Optional Param/ "location-filter" - Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
instance HasOptionalParam SearchNews LocationFilter where
  applyOptionalParam req (LocationFilter xs) =
    req `addQuery` toQuery ("location-filter", Just xs)

-- | /Optional Param/ "sort" - The sorting criteria (publish-time).
instance HasOptionalParam SearchNews Sort where
  applyOptionalParam req (Sort xs) =
    req `addQuery` toQuery ("sort", Just xs)

-- | /Optional Param/ "sort-direction" - Whether to sort ascending or descending (ASC or DESC).
instance HasOptionalParam SearchNews SortDirection where
  applyOptionalParam req (SortDirection xs) =
    req `addQuery` toQuery ("sort-direction", Just xs)

-- | /Optional Param/ "offset" - The number of news to skip in range [0,10000]
instance HasOptionalParam SearchNews Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of news to return in range [1,100]
instance HasOptionalParam SearchNews Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchNews MimeJSON


-- *** topNews

-- | @GET \/top-news@
-- 
-- Top News
-- 
-- Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
topNews
  :: SourceCountry -- ^ "sourceCountry" -  The ISO 3166 country code of the country for which top news should be retrieved.
  -> Language -- ^ "language" -  The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  -> WorldNewsRequest TopNews MimeNoContent TopNews200Response MimeJSON
topNews (SourceCountry sourceCountry) (Language language) =
  _mkRequest "GET" ["/top-news"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("source-country", Just sourceCountry)
    `addQuery` toQuery ("language", Just language)

data TopNews  

-- | /Optional Param/ "date" - The date for which the top news should be retrieved. If no date is given, the current day is assumed.
instance HasOptionalParam TopNews ParamDate where
  applyOptionalParam req (ParamDate xs) =
    req `addQuery` toQuery ("date", Just xs)

-- | /Optional Param/ "headlines-only" - Whether to only return basic information such as id, title, and url of the news.
instance HasOptionalParam TopNews HeadlinesOnly where
  applyOptionalParam req (HeadlinesOnly xs) =
    req `addQuery` toQuery ("headlines-only", Just xs)
-- | @application/json@
instance Produces TopNews MimeJSON

