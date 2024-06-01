{-
   World News API

   The world's news wrapped into a single API.

   OpenAPI Version: 3.0.0
   World News API API version: 1.1.1
   Contact: mail@worldnewsapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : WorldNews.Logging
Logging functions
-}
{-# LANGUAGE CPP #-}

#ifdef USE_KATIP

module WorldNews.Logging
  ( module WorldNews.LoggingKatip
  ) where

import WorldNews.LoggingKatip

#else

module WorldNews.Logging
  ( module WorldNews.LoggingMonadLogger
  ) where

import WorldNews.LoggingMonadLogger

#endif
