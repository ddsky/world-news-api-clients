{-
   World News API

   The world's news wrapped into a single API.

   OpenAPI Version: 3.0.0
   World News API API version: 1.2.0
   Contact: mail@worldnewsapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : WorldNews.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module WorldNews.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import WorldNews.Model
import WorldNews.Core


-- * ExtractNews200Response

-- | 'extractNews200ResponseTitle' Lens
extractNews200ResponseTitleL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseTitleL f ExtractNews200Response{..} = (\extractNews200ResponseTitle -> ExtractNews200Response { extractNews200ResponseTitle, ..} ) <$> f extractNews200ResponseTitle
{-# INLINE extractNews200ResponseTitleL #-}

-- | 'extractNews200ResponseText' Lens
extractNews200ResponseTextL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseTextL f ExtractNews200Response{..} = (\extractNews200ResponseText -> ExtractNews200Response { extractNews200ResponseText, ..} ) <$> f extractNews200ResponseText
{-# INLINE extractNews200ResponseTextL #-}

-- | 'extractNews200ResponseUrl' Lens
extractNews200ResponseUrlL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseUrlL f ExtractNews200Response{..} = (\extractNews200ResponseUrl -> ExtractNews200Response { extractNews200ResponseUrl, ..} ) <$> f extractNews200ResponseUrl
{-# INLINE extractNews200ResponseUrlL #-}

-- | 'extractNews200ResponseImage' Lens
extractNews200ResponseImageL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseImageL f ExtractNews200Response{..} = (\extractNews200ResponseImage -> ExtractNews200Response { extractNews200ResponseImage, ..} ) <$> f extractNews200ResponseImage
{-# INLINE extractNews200ResponseImageL #-}

-- | 'extractNews200ResponseImages' Lens
extractNews200ResponseImagesL :: Lens_' ExtractNews200Response (Maybe [ExtractNews200ResponseImagesInner])
extractNews200ResponseImagesL f ExtractNews200Response{..} = (\extractNews200ResponseImages -> ExtractNews200Response { extractNews200ResponseImages, ..} ) <$> f extractNews200ResponseImages
{-# INLINE extractNews200ResponseImagesL #-}

-- | 'extractNews200ResponseVideo' Lens
extractNews200ResponseVideoL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseVideoL f ExtractNews200Response{..} = (\extractNews200ResponseVideo -> ExtractNews200Response { extractNews200ResponseVideo, ..} ) <$> f extractNews200ResponseVideo
{-# INLINE extractNews200ResponseVideoL #-}

-- | 'extractNews200ResponseVideos' Lens
extractNews200ResponseVideosL :: Lens_' ExtractNews200Response (Maybe [ExtractNews200ResponseVideosInner])
extractNews200ResponseVideosL f ExtractNews200Response{..} = (\extractNews200ResponseVideos -> ExtractNews200Response { extractNews200ResponseVideos, ..} ) <$> f extractNews200ResponseVideos
{-# INLINE extractNews200ResponseVideosL #-}

-- | 'extractNews200ResponsePublishDate' Lens
extractNews200ResponsePublishDateL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponsePublishDateL f ExtractNews200Response{..} = (\extractNews200ResponsePublishDate -> ExtractNews200Response { extractNews200ResponsePublishDate, ..} ) <$> f extractNews200ResponsePublishDate
{-# INLINE extractNews200ResponsePublishDateL #-}

-- | 'extractNews200ResponseAuthor' Lens
extractNews200ResponseAuthorL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseAuthorL f ExtractNews200Response{..} = (\extractNews200ResponseAuthor -> ExtractNews200Response { extractNews200ResponseAuthor, ..} ) <$> f extractNews200ResponseAuthor
{-# INLINE extractNews200ResponseAuthorL #-}

-- | 'extractNews200ResponseAuthors' Lens
extractNews200ResponseAuthorsL :: Lens_' ExtractNews200Response (Maybe [Text])
extractNews200ResponseAuthorsL f ExtractNews200Response{..} = (\extractNews200ResponseAuthors -> ExtractNews200Response { extractNews200ResponseAuthors, ..} ) <$> f extractNews200ResponseAuthors
{-# INLINE extractNews200ResponseAuthorsL #-}

-- | 'extractNews200ResponseLanguage' Lens
extractNews200ResponseLanguageL :: Lens_' ExtractNews200Response (Maybe Text)
extractNews200ResponseLanguageL f ExtractNews200Response{..} = (\extractNews200ResponseLanguage -> ExtractNews200Response { extractNews200ResponseLanguage, ..} ) <$> f extractNews200ResponseLanguage
{-# INLINE extractNews200ResponseLanguageL #-}



-- * ExtractNews200ResponseImagesInner

-- | 'extractNews200ResponseImagesInnerWidth' Lens
extractNews200ResponseImagesInnerWidthL :: Lens_' ExtractNews200ResponseImagesInner (Maybe Int)
extractNews200ResponseImagesInnerWidthL f ExtractNews200ResponseImagesInner{..} = (\extractNews200ResponseImagesInnerWidth -> ExtractNews200ResponseImagesInner { extractNews200ResponseImagesInnerWidth, ..} ) <$> f extractNews200ResponseImagesInnerWidth
{-# INLINE extractNews200ResponseImagesInnerWidthL #-}

-- | 'extractNews200ResponseImagesInnerTitle' Lens
extractNews200ResponseImagesInnerTitleL :: Lens_' ExtractNews200ResponseImagesInner (Maybe Text)
extractNews200ResponseImagesInnerTitleL f ExtractNews200ResponseImagesInner{..} = (\extractNews200ResponseImagesInnerTitle -> ExtractNews200ResponseImagesInner { extractNews200ResponseImagesInnerTitle, ..} ) <$> f extractNews200ResponseImagesInnerTitle
{-# INLINE extractNews200ResponseImagesInnerTitleL #-}

-- | 'extractNews200ResponseImagesInnerUrl' Lens
extractNews200ResponseImagesInnerUrlL :: Lens_' ExtractNews200ResponseImagesInner (Maybe Text)
extractNews200ResponseImagesInnerUrlL f ExtractNews200ResponseImagesInner{..} = (\extractNews200ResponseImagesInnerUrl -> ExtractNews200ResponseImagesInner { extractNews200ResponseImagesInnerUrl, ..} ) <$> f extractNews200ResponseImagesInnerUrl
{-# INLINE extractNews200ResponseImagesInnerUrlL #-}

-- | 'extractNews200ResponseImagesInnerHeight' Lens
extractNews200ResponseImagesInnerHeightL :: Lens_' ExtractNews200ResponseImagesInner (Maybe Int)
extractNews200ResponseImagesInnerHeightL f ExtractNews200ResponseImagesInner{..} = (\extractNews200ResponseImagesInnerHeight -> ExtractNews200ResponseImagesInner { extractNews200ResponseImagesInnerHeight, ..} ) <$> f extractNews200ResponseImagesInnerHeight
{-# INLINE extractNews200ResponseImagesInnerHeightL #-}



-- * ExtractNews200ResponseVideosInner

-- | 'extractNews200ResponseVideosInnerSummary' Lens
extractNews200ResponseVideosInnerSummaryL :: Lens_' ExtractNews200ResponseVideosInner (Maybe Text)
extractNews200ResponseVideosInnerSummaryL f ExtractNews200ResponseVideosInner{..} = (\extractNews200ResponseVideosInnerSummary -> ExtractNews200ResponseVideosInner { extractNews200ResponseVideosInnerSummary, ..} ) <$> f extractNews200ResponseVideosInnerSummary
{-# INLINE extractNews200ResponseVideosInnerSummaryL #-}

-- | 'extractNews200ResponseVideosInnerDuration' Lens
extractNews200ResponseVideosInnerDurationL :: Lens_' ExtractNews200ResponseVideosInner (Maybe Int)
extractNews200ResponseVideosInnerDurationL f ExtractNews200ResponseVideosInner{..} = (\extractNews200ResponseVideosInnerDuration -> ExtractNews200ResponseVideosInner { extractNews200ResponseVideosInnerDuration, ..} ) <$> f extractNews200ResponseVideosInnerDuration
{-# INLINE extractNews200ResponseVideosInnerDurationL #-}

-- | 'extractNews200ResponseVideosInnerThumbnail' Lens
extractNews200ResponseVideosInnerThumbnailL :: Lens_' ExtractNews200ResponseVideosInner (Maybe Text)
extractNews200ResponseVideosInnerThumbnailL f ExtractNews200ResponseVideosInner{..} = (\extractNews200ResponseVideosInnerThumbnail -> ExtractNews200ResponseVideosInner { extractNews200ResponseVideosInnerThumbnail, ..} ) <$> f extractNews200ResponseVideosInnerThumbnail
{-# INLINE extractNews200ResponseVideosInnerThumbnailL #-}

-- | 'extractNews200ResponseVideosInnerTitle' Lens
extractNews200ResponseVideosInnerTitleL :: Lens_' ExtractNews200ResponseVideosInner (Maybe Text)
extractNews200ResponseVideosInnerTitleL f ExtractNews200ResponseVideosInner{..} = (\extractNews200ResponseVideosInnerTitle -> ExtractNews200ResponseVideosInner { extractNews200ResponseVideosInnerTitle, ..} ) <$> f extractNews200ResponseVideosInnerTitle
{-# INLINE extractNews200ResponseVideosInnerTitleL #-}

-- | 'extractNews200ResponseVideosInnerUrl' Lens
extractNews200ResponseVideosInnerUrlL :: Lens_' ExtractNews200ResponseVideosInner (Maybe Text)
extractNews200ResponseVideosInnerUrlL f ExtractNews200ResponseVideosInner{..} = (\extractNews200ResponseVideosInnerUrl -> ExtractNews200ResponseVideosInner { extractNews200ResponseVideosInnerUrl, ..} ) <$> f extractNews200ResponseVideosInnerUrl
{-# INLINE extractNews200ResponseVideosInnerUrlL #-}



-- * ExtractNewsLinks200Response

-- | 'extractNewsLinks200ResponseNewsLinks' Lens
extractNewsLinks200ResponseNewsLinksL :: Lens_' ExtractNewsLinks200Response (Maybe [Text])
extractNewsLinks200ResponseNewsLinksL f ExtractNewsLinks200Response{..} = (\extractNewsLinks200ResponseNewsLinks -> ExtractNewsLinks200Response { extractNewsLinks200ResponseNewsLinks, ..} ) <$> f extractNewsLinks200ResponseNewsLinks
{-# INLINE extractNewsLinks200ResponseNewsLinksL #-}



-- * GetGeoCoordinates200Response

-- | 'getGeoCoordinates200ResponseLatitude' Lens
getGeoCoordinates200ResponseLatitudeL :: Lens_' GetGeoCoordinates200Response (Maybe Double)
getGeoCoordinates200ResponseLatitudeL f GetGeoCoordinates200Response{..} = (\getGeoCoordinates200ResponseLatitude -> GetGeoCoordinates200Response { getGeoCoordinates200ResponseLatitude, ..} ) <$> f getGeoCoordinates200ResponseLatitude
{-# INLINE getGeoCoordinates200ResponseLatitudeL #-}

-- | 'getGeoCoordinates200ResponseLongitude' Lens
getGeoCoordinates200ResponseLongitudeL :: Lens_' GetGeoCoordinates200Response (Maybe Double)
getGeoCoordinates200ResponseLongitudeL f GetGeoCoordinates200Response{..} = (\getGeoCoordinates200ResponseLongitude -> GetGeoCoordinates200Response { getGeoCoordinates200ResponseLongitude, ..} ) <$> f getGeoCoordinates200ResponseLongitude
{-# INLINE getGeoCoordinates200ResponseLongitudeL #-}

-- | 'getGeoCoordinates200ResponseCity' Lens
getGeoCoordinates200ResponseCityL :: Lens_' GetGeoCoordinates200Response (Maybe Text)
getGeoCoordinates200ResponseCityL f GetGeoCoordinates200Response{..} = (\getGeoCoordinates200ResponseCity -> GetGeoCoordinates200Response { getGeoCoordinates200ResponseCity, ..} ) <$> f getGeoCoordinates200ResponseCity
{-# INLINE getGeoCoordinates200ResponseCityL #-}



-- * RetrieveNewsArticlesByIds200Response

-- | 'retrieveNewsArticlesByIds200ResponseNews' Lens
retrieveNewsArticlesByIds200ResponseNewsL :: Lens_' RetrieveNewsArticlesByIds200Response (Maybe [RetrieveNewsArticlesByIds200ResponseNewsInner])
retrieveNewsArticlesByIds200ResponseNewsL f RetrieveNewsArticlesByIds200Response{..} = (\retrieveNewsArticlesByIds200ResponseNews -> RetrieveNewsArticlesByIds200Response { retrieveNewsArticlesByIds200ResponseNews, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNews
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsL #-}



-- * RetrieveNewsArticlesByIds200ResponseNewsInner

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerSummary' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerSummaryL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerSummaryL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerSummary -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerSummary, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerSummary
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerSummaryL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerImage' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerImageL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerImageL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerImage -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerImage, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerImage
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerImageL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerSentiment' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerSentimentL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Double)
retrieveNewsArticlesByIds200ResponseNewsInnerSentimentL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerSentiment -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerSentiment, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerSentiment
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerSentimentL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerCatgory' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerCatgoryL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerCatgoryL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerCatgory -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerCatgory, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerCatgory
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerCatgoryL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerLanguage' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerLanguageL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerLanguageL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerLanguage -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerLanguage, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerLanguage
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerLanguageL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerTitle' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerTitleL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerTitleL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerTitle -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerTitle, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerTitle
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerTitleL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerUrl' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerUrlL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerUrlL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerUrl -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerUrl, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerUrl
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerUrlL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountry' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountryL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountryL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountry -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountry, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountry
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerSourceCountryL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerId' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerIdL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Int)
retrieveNewsArticlesByIds200ResponseNewsInnerIdL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerId -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerId, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerId
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerIdL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerText' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerTextL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerTextL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerText -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerText, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerText
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerTextL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerPublishDate' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerPublishDateL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe Text)
retrieveNewsArticlesByIds200ResponseNewsInnerPublishDateL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerPublishDate -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerPublishDate, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerPublishDate
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerPublishDateL #-}

-- | 'retrieveNewsArticlesByIds200ResponseNewsInnerAuthors' Lens
retrieveNewsArticlesByIds200ResponseNewsInnerAuthorsL :: Lens_' RetrieveNewsArticlesByIds200ResponseNewsInner (Maybe [Text])
retrieveNewsArticlesByIds200ResponseNewsInnerAuthorsL f RetrieveNewsArticlesByIds200ResponseNewsInner{..} = (\retrieveNewsArticlesByIds200ResponseNewsInnerAuthors -> RetrieveNewsArticlesByIds200ResponseNewsInner { retrieveNewsArticlesByIds200ResponseNewsInnerAuthors, ..} ) <$> f retrieveNewsArticlesByIds200ResponseNewsInnerAuthors
{-# INLINE retrieveNewsArticlesByIds200ResponseNewsInnerAuthorsL #-}



-- * SearchNews200Response

-- | 'searchNews200ResponseOffset' Lens
searchNews200ResponseOffsetL :: Lens_' SearchNews200Response (Maybe Int)
searchNews200ResponseOffsetL f SearchNews200Response{..} = (\searchNews200ResponseOffset -> SearchNews200Response { searchNews200ResponseOffset, ..} ) <$> f searchNews200ResponseOffset
{-# INLINE searchNews200ResponseOffsetL #-}

-- | 'searchNews200ResponseNumber' Lens
searchNews200ResponseNumberL :: Lens_' SearchNews200Response (Maybe Int)
searchNews200ResponseNumberL f SearchNews200Response{..} = (\searchNews200ResponseNumber -> SearchNews200Response { searchNews200ResponseNumber, ..} ) <$> f searchNews200ResponseNumber
{-# INLINE searchNews200ResponseNumberL #-}

-- | 'searchNews200ResponseAvailable' Lens
searchNews200ResponseAvailableL :: Lens_' SearchNews200Response (Maybe Int)
searchNews200ResponseAvailableL f SearchNews200Response{..} = (\searchNews200ResponseAvailable -> SearchNews200Response { searchNews200ResponseAvailable, ..} ) <$> f searchNews200ResponseAvailable
{-# INLINE searchNews200ResponseAvailableL #-}

-- | 'searchNews200ResponseNews' Lens
searchNews200ResponseNewsL :: Lens_' SearchNews200Response (Maybe [SearchNews200ResponseNewsInner])
searchNews200ResponseNewsL f SearchNews200Response{..} = (\searchNews200ResponseNews -> SearchNews200Response { searchNews200ResponseNews, ..} ) <$> f searchNews200ResponseNews
{-# INLINE searchNews200ResponseNewsL #-}



-- * SearchNews200ResponseNewsInner

-- | 'searchNews200ResponseNewsInnerSummary' Lens
searchNews200ResponseNewsInnerSummaryL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerSummaryL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerSummary -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerSummary, ..} ) <$> f searchNews200ResponseNewsInnerSummary
{-# INLINE searchNews200ResponseNewsInnerSummaryL #-}

-- | 'searchNews200ResponseNewsInnerImage' Lens
searchNews200ResponseNewsInnerImageL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerImageL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerImage -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerImage, ..} ) <$> f searchNews200ResponseNewsInnerImage
{-# INLINE searchNews200ResponseNewsInnerImageL #-}

-- | 'searchNews200ResponseNewsInnerSentiment' Lens
searchNews200ResponseNewsInnerSentimentL :: Lens_' SearchNews200ResponseNewsInner (Maybe Double)
searchNews200ResponseNewsInnerSentimentL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerSentiment -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerSentiment, ..} ) <$> f searchNews200ResponseNewsInnerSentiment
{-# INLINE searchNews200ResponseNewsInnerSentimentL #-}

-- | 'searchNews200ResponseNewsInnerAuthor' Lens
searchNews200ResponseNewsInnerAuthorL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerAuthorL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerAuthor -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerAuthor, ..} ) <$> f searchNews200ResponseNewsInnerAuthor
{-# INLINE searchNews200ResponseNewsInnerAuthorL #-}

-- | 'searchNews200ResponseNewsInnerLanguage' Lens
searchNews200ResponseNewsInnerLanguageL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerLanguageL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerLanguage -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerLanguage, ..} ) <$> f searchNews200ResponseNewsInnerLanguage
{-# INLINE searchNews200ResponseNewsInnerLanguageL #-}

-- | 'searchNews200ResponseNewsInnerVideo' Lens
searchNews200ResponseNewsInnerVideoL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerVideoL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerVideo -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerVideo, ..} ) <$> f searchNews200ResponseNewsInnerVideo
{-# INLINE searchNews200ResponseNewsInnerVideoL #-}

-- | 'searchNews200ResponseNewsInnerTitle' Lens
searchNews200ResponseNewsInnerTitleL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerTitleL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerTitle -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerTitle, ..} ) <$> f searchNews200ResponseNewsInnerTitle
{-# INLINE searchNews200ResponseNewsInnerTitleL #-}

-- | 'searchNews200ResponseNewsInnerUrl' Lens
searchNews200ResponseNewsInnerUrlL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerUrlL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerUrl -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerUrl, ..} ) <$> f searchNews200ResponseNewsInnerUrl
{-# INLINE searchNews200ResponseNewsInnerUrlL #-}

-- | 'searchNews200ResponseNewsInnerSourceCountry' Lens
searchNews200ResponseNewsInnerSourceCountryL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerSourceCountryL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerSourceCountry -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerSourceCountry, ..} ) <$> f searchNews200ResponseNewsInnerSourceCountry
{-# INLINE searchNews200ResponseNewsInnerSourceCountryL #-}

-- | 'searchNews200ResponseNewsInnerId' Lens
searchNews200ResponseNewsInnerIdL :: Lens_' SearchNews200ResponseNewsInner (Maybe Int)
searchNews200ResponseNewsInnerIdL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerId -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerId, ..} ) <$> f searchNews200ResponseNewsInnerId
{-# INLINE searchNews200ResponseNewsInnerIdL #-}

-- | 'searchNews200ResponseNewsInnerText' Lens
searchNews200ResponseNewsInnerTextL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerTextL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerText -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerText, ..} ) <$> f searchNews200ResponseNewsInnerText
{-# INLINE searchNews200ResponseNewsInnerTextL #-}

-- | 'searchNews200ResponseNewsInnerPublishDate' Lens
searchNews200ResponseNewsInnerPublishDateL :: Lens_' SearchNews200ResponseNewsInner (Maybe Text)
searchNews200ResponseNewsInnerPublishDateL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerPublishDate -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerPublishDate, ..} ) <$> f searchNews200ResponseNewsInnerPublishDate
{-# INLINE searchNews200ResponseNewsInnerPublishDateL #-}

-- | 'searchNews200ResponseNewsInnerAuthors' Lens
searchNews200ResponseNewsInnerAuthorsL :: Lens_' SearchNews200ResponseNewsInner (Maybe [Text])
searchNews200ResponseNewsInnerAuthorsL f SearchNews200ResponseNewsInner{..} = (\searchNews200ResponseNewsInnerAuthors -> SearchNews200ResponseNewsInner { searchNews200ResponseNewsInnerAuthors, ..} ) <$> f searchNews200ResponseNewsInnerAuthors
{-# INLINE searchNews200ResponseNewsInnerAuthorsL #-}



-- * TopNews200Response

-- | 'topNews200ResponseTopNews' Lens
topNews200ResponseTopNewsL :: Lens_' TopNews200Response (Maybe [TopNews200ResponseTopNewsInner])
topNews200ResponseTopNewsL f TopNews200Response{..} = (\topNews200ResponseTopNews -> TopNews200Response { topNews200ResponseTopNews, ..} ) <$> f topNews200ResponseTopNews
{-# INLINE topNews200ResponseTopNewsL #-}

-- | 'topNews200ResponseLanguage' Lens
topNews200ResponseLanguageL :: Lens_' TopNews200Response (Maybe Text)
topNews200ResponseLanguageL f TopNews200Response{..} = (\topNews200ResponseLanguage -> TopNews200Response { topNews200ResponseLanguage, ..} ) <$> f topNews200ResponseLanguage
{-# INLINE topNews200ResponseLanguageL #-}

-- | 'topNews200ResponseCountry' Lens
topNews200ResponseCountryL :: Lens_' TopNews200Response (Maybe Text)
topNews200ResponseCountryL f TopNews200Response{..} = (\topNews200ResponseCountry -> TopNews200Response { topNews200ResponseCountry, ..} ) <$> f topNews200ResponseCountry
{-# INLINE topNews200ResponseCountryL #-}



-- * TopNews200ResponseTopNewsInner

-- | 'topNews200ResponseTopNewsInnerNews' Lens
topNews200ResponseTopNewsInnerNewsL :: Lens_' TopNews200ResponseTopNewsInner (Maybe [TopNews200ResponseTopNewsInnerNewsInner])
topNews200ResponseTopNewsInnerNewsL f TopNews200ResponseTopNewsInner{..} = (\topNews200ResponseTopNewsInnerNews -> TopNews200ResponseTopNewsInner { topNews200ResponseTopNewsInnerNews, ..} ) <$> f topNews200ResponseTopNewsInnerNews
{-# INLINE topNews200ResponseTopNewsInnerNewsL #-}



-- * TopNews200ResponseTopNewsInnerNewsInner

-- | 'topNews200ResponseTopNewsInnerNewsInnerSummary' Lens
topNews200ResponseTopNewsInnerNewsInnerSummaryL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerSummaryL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerSummary -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerSummary, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerSummary
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerSummaryL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerImage' Lens
topNews200ResponseTopNewsInnerNewsInnerImageL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerImageL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerImage -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerImage, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerImage
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerImageL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerAuthor' Lens
topNews200ResponseTopNewsInnerNewsInnerAuthorL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerAuthorL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerAuthor -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerAuthor, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerAuthor
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerAuthorL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerId' Lens
topNews200ResponseTopNewsInnerNewsInnerIdL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Int)
topNews200ResponseTopNewsInnerNewsInnerIdL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerId -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerId, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerId
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerIdL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerText' Lens
topNews200ResponseTopNewsInnerNewsInnerTextL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerTextL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerText -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerText, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerText
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerTextL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerTitle' Lens
topNews200ResponseTopNewsInnerNewsInnerTitleL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerTitleL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerTitle -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerTitle, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerTitle
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerTitleL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerPublishDate' Lens
topNews200ResponseTopNewsInnerNewsInnerPublishDateL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerPublishDateL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerPublishDate -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerPublishDate, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerPublishDate
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerPublishDateL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerUrl' Lens
topNews200ResponseTopNewsInnerNewsInnerUrlL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe Text)
topNews200ResponseTopNewsInnerNewsInnerUrlL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerUrl -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerUrl, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerUrl
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerUrlL #-}

-- | 'topNews200ResponseTopNewsInnerNewsInnerAuthors' Lens
topNews200ResponseTopNewsInnerNewsInnerAuthorsL :: Lens_' TopNews200ResponseTopNewsInnerNewsInner (Maybe [Text])
topNews200ResponseTopNewsInnerNewsInnerAuthorsL f TopNews200ResponseTopNewsInnerNewsInner{..} = (\topNews200ResponseTopNewsInnerNewsInnerAuthors -> TopNews200ResponseTopNewsInnerNewsInner { topNews200ResponseTopNewsInnerNewsInnerAuthors, ..} ) <$> f topNews200ResponseTopNewsInnerNewsInnerAuthors
{-# INLINE topNews200ResponseTopNewsInnerNewsInnerAuthorsL #-}


