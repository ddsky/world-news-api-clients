(ns world-news-api.specs.search-news-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.news-article :refer :all]
            )
  (:import (java.io File)))


(def search-news-response-data
  {
   (ds/req :offset) int?
   (ds/req :number) int?
   (ds/req :available) int?
   (ds/req :news) (s/coll-of news-article-spec)
   })

(def search-news-response-spec
  (ds/spec
    {:name ::search-news-response
     :spec search-news-response-data}))
