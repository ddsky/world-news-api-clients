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
      propMimeEq MimeJSON (Proxy :: Proxy ExtractLinksResponse)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNewsResponse)
      propMimeEq MimeJSON (Proxy :: Proxy GeoCoordinatesResponse)
      propMimeEq MimeJSON (Proxy :: Proxy News)
      propMimeEq MimeJSON (Proxy :: Proxy NewsArticle)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNewsResponse)
      
