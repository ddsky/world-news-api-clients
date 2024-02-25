(ns world-news-api.api.news
  (:require [world-news-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [world-news-api.specs.news :refer :all]
            [world-news-api.specs.inline-response-200-3 :refer :all]
            [world-news-api.specs.inline-response-200-2 :refer :all]
            [world-news-api.specs.inline-response-200-1 :refer :all]
            [world-news-api.specs.inline-response-200-news :refer :all]
            [world-news-api.specs.inline-response-200 :refer :all]
            )
  (:import (java.io File)))


(defn-spec extract-news-with-http-info any?
  "Extract News
  Extract a news entry from a news site."
  [url string?, analyze boolean?]
  (check-required-params url analyze)
  (call-api "/extract-news" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url "analyze" analyze }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-news inline-response-200-1-spec
  "Extract News
  Extract a news entry from a news site."
  [url string?, analyze boolean?]
  (let [res (:data (extract-news-with-http-info url analyze))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-1-spec res st/string-transformer)
       res)))


(defn-spec extract-news-links-with-http-info any?
  "Extract News Links
  Extract a news links from a news website."
  ([url string?, api-key string?, ] (extract-news-links-with-http-info url api-key nil))
  ([url string?, api-key string?, {:keys [prefix sub-domain]} (s/map-of keyword? any?)]
   (check-required-params url api-key)
   (call-api "/extract-news-links" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "prefix" prefix "sub-domain" sub-domain "api-key" api-key }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec extract-news-links inline-response-200-2-spec
  "Extract News Links
  Extract a news links from a news website."
  ([url string?, api-key string?, ] (extract-news-links url api-key nil))
  ([url string?, api-key string?, optional-params any?]
   (let [res (:data (extract-news-links-with-http-info url api-key optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-2-spec res st/string-transformer)
        res))))


(defn-spec geo-coordinates-with-http-info any?
  "Get Geo Coordinates
  Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country."
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

(defn-spec geo-coordinates inline-response-200-3-spec
  "Get Geo Coordinates
  Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country."
  [location string?]
  (let [res (:data (geo-coordinates-with-http-info location))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-3-spec res st/string-transformer)
       res)))


(defn-spec news-website-to-rss-feed-with-http-info any?
  "News Website to RSS Feed
  Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page."
  ([url string?, api-key string?, ] (news-website-to-rss-feed-with-http-info url api-key nil))
  ([url string?, api-key string?, {:keys [extract-news]} (s/map-of keyword? any?)]
   (check-required-params url api-key)
   (call-api "/feed.rss" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "extract-news" extract-news "api-key" api-key }
              :form-params   {}
              :content-types []
              :accepts       ["application/xml"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec news-website-to-rss-feed any?
  "News Website to RSS Feed
  Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page."
  ([url string?, api-key string?, ] (news-website-to-rss-feed url api-key nil))
  ([url string?, api-key string?, optional-params any?]
   (let [res (:data (news-website-to-rss-feed-with-http-info url api-key optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-news-with-http-info any?
  "Search News
  Search for news."
  ([] (search-news-with-http-info nil))
  ([{:keys [text source-countries language min-sentiment max-sentiment earliest-publish-date latest-publish-date news-sources authors entities location-filter offset number sort sort-direction]} (s/map-of keyword? any?)]
   (call-api "/search-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "source-countries" source-countries "language" language "min-sentiment" min-sentiment "max-sentiment" max-sentiment "earliest-publish-date" earliest-publish-date "latest-publish-date" latest-publish-date "news-sources" news-sources "authors" authors "entities" entities "location-filter" location-filter "offset" offset "number" number "sort" sort "sort-direction" sort-direction }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-news inline-response-200-spec
  "Search News
  Search for news."
  ([] (search-news nil))
  ([optional-params any?]
   (let [res (:data (search-news-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-spec res st/string-transformer)
        res))))


