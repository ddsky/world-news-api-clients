{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import WorldNews.Model
import WorldNews.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNews200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNews200ResponseImagesInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNews200ResponseVideosInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNewsLinks200Response)
      propMimeEq MimeJSON (Proxy :: Proxy GetGeoCoordinates200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RetrieveNewsArticlesByIds200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RetrieveNewsArticlesByIds200ResponseNewsInner)
      propMimeEq MimeJSON (Proxy :: Proxy RetrieveNewspaperFrontPage200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RetrieveNewspaperFrontPage200ResponseFrontPage)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNews200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNews200ResponseNewsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNewsSources200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNewsSources200ResponseSourcesInner)
      propMimeEq MimeJSON (Proxy :: Proxy TopNews200Response)
      propMimeEq MimeJSON (Proxy :: Proxy TopNews200ResponseTopNewsInner)
      propMimeEq MimeJSON (Proxy :: Proxy TopNews200ResponseTopNewsInnerNewsInner)
      
