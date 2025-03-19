(ns world-news-api.api.news
  (:require [world-news-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [world-news-api.specs.retrieve-news-articles-by-ids-200-response :refer :all]
            [world-news-api.specs.retrieve-news-articles-by-ids-200-response-news-inner :refer :all]
            [world-news-api.specs.top-news-200-response :refer :all]
            [world-news-api.specs.search-news-200-response-news-inner :refer :all]
            [world-news-api.specs.extract-news-200-response-videos-inner :refer :all]
            [world-news-api.specs.top-news-200-response-top-news-inner-news-inner :refer :all]
            [world-news-api.specs.retrieve-newspaper-front-page-200-response :refer :all]
            [world-news-api.specs.extract-news-links-200-response :refer :all]
            [world-news-api.specs.retrieve-newspaper-front-page-200-response-front-page :refer :all]
            [world-news-api.specs.top-news-200-response-top-news-inner :refer :all]
            [world-news-api.specs.extract-news-200-response :refer :all]
            [world-news-api.specs.search-news-200-response :refer :all]
            [world-news-api.specs.search-news-sources-200-response :refer :all]
            [world-news-api.specs.extract-news-200-response-images-inner :refer :all]
            [world-news-api.specs.get-geo-coordinates-200-response :refer :all]
            [world-news-api.specs.search-news-sources-200-response-sources-inner :refer :all]
            )
  (:import (java.io File)))


(defn-spec extract-news-with-http-info any?
  "Extract News
  Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article."
  ([url string?, ] (extract-news-with-http-info url nil))
  ([url string?, {:keys [analyze]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/extract-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "analyze" analyze }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec extract-news extract-news-200-response-spec
  "Extract News
  Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article."
  ([url string?, ] (extract-news url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-news-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode extract-news-200-response-spec res st/string-transformer)
        res))))


(defn-spec extract-news-links-with-http-info any?
  "Extract News Links
  Extract news links from a news website."
  ([url string?, ] (extract-news-links-with-http-info url nil))
  ([url string?, {:keys [analyze]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/extract-news-links" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "analyze" analyze }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec extract-news-links extract-news-links-200-response-spec
  "Extract News Links
  Extract news links from a news website."
  ([url string?, ] (extract-news-links url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-news-links-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode extract-news-links-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-geo-coordinates-with-http-info any?
  "Get Geo Coordinates
  Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint."
  [location string?]
  (check-required-params location)
  (call-api "/geo-coordinates" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"location" location }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec get-geo-coordinates get-geo-coordinates-200-response-spec
  "Get Geo Coordinates
  Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint."
  [location string?]
  (let [res (:data (get-geo-coordinates-with-http-info location))]
    (if (:decode-models *api-context*)
       (st/decode get-geo-coordinates-200-response-spec res st/string-transformer)
       res)))


(defn-spec news-website-to-rss-feed-with-http-info any?
  "News Website to RSS Feed
  Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page."
  ([url string?, ] (news-website-to-rss-feed-with-http-info url nil))
  ([url string?, {:keys [extract-news]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/feed.rss" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "extract-news" extract-news }
              :form-params   {}
              :content-types []
              :accepts       ["application/xml"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec news-website-to-rss-feed any?
  "News Website to RSS Feed
  Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page."
  ([url string?, ] (news-website-to-rss-feed url nil))
  ([url string?, optional-params any?]
   (let [res (:data (news-website-to-rss-feed-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec retrieve-news-articles-by-ids-with-http-info any?
  "Retrieve News Articles by Ids
  Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs."
  [ids string?]
  (check-required-params ids)
  (call-api "/retrieve-news" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"ids" ids }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec retrieve-news-articles-by-ids retrieve-news-articles-by-ids-200-response-spec
  "Retrieve News Articles by Ids
  Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs."
  [ids string?]
  (let [res (:data (retrieve-news-articles-by-ids-with-http-info ids))]
    (if (:decode-models *api-context*)
       (st/decode retrieve-news-articles-by-ids-200-response-spec res st/string-transformer)
       res)))


(defn-spec retrieve-newspaper-front-page-with-http-info any?
  "Retrieve Newspaper Front Page
  Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:"
  ([] (retrieve-newspaper-front-page-with-http-info nil))
  ([{:keys [source-country source-name date]} (s/map-of keyword? any?)]
   (call-api "/retrieve-front-page" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"source-country" source-country "source-name" source-name "date" date }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec retrieve-newspaper-front-page retrieve-newspaper-front-page-200-response-spec
  "Retrieve Newspaper Front Page
  Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:"
  ([] (retrieve-newspaper-front-page nil))
  ([optional-params any?]
   (let [res (:data (retrieve-newspaper-front-page-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retrieve-newspaper-front-page-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-news-with-http-info any?
  "Search News
  Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news-with-http-info nil))
  ([{:keys [text text-match-indexes source-country language min-sentiment max-sentiment earliest-publish-date latest-publish-date news-sources authors categories entities location-filter sort sort-direction offset number]} (s/map-of keyword? any?)]
   (call-api "/search-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "text-match-indexes" text-match-indexes "source-country" source-country "language" language "min-sentiment" min-sentiment "max-sentiment" max-sentiment "earliest-publish-date" earliest-publish-date "latest-publish-date" latest-publish-date "news-sources" news-sources "authors" authors "categories" categories "entities" entities "location-filter" location-filter "sort" sort "sort-direction" sort-direction "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-news search-news-200-response-spec
  "Search News
  Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news nil))
  ([optional-params any?]
   (let [res (:data (search-news-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-news-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-news-sources-with-http-info any?
  "Search News Sources
  Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API."
  [name string?]
  (check-required-params name)
  (call-api "/search-news-sources" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"name" name }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec search-news-sources search-news-sources-200-response-spec
  "Search News Sources
  Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API."
  [name string?]
  (let [res (:data (search-news-sources-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode search-news-sources-200-response-spec res st/string-transformer)
       res)))


(defn-spec top-news-with-http-info any?
  "Top News
  Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news-with-http-info source-country language nil))
  ([source-country string?, language string?, {:keys [date headlines-only]} (s/map-of keyword? any?)]
   (check-required-params source-country language)
   (call-api "/top-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"source-country" source-country "language" language "date" date "headlines-only" headlines-only }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec top-news top-news-200-response-spec
  "Top News
  Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news source-country language nil))
  ([source-country string?, language string?, optional-params any?]
   (let [res (:data (top-news-with-http-info source-country language optional-params))]
     (if (:decode-models *api-context*)
        (st/decode top-news-200-response-spec res st/string-transformer)
        res))))


