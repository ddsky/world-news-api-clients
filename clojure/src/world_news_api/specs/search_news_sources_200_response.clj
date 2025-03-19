(ns world-news-api.specs.search-news-sources-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.search-news-sources-200-response-sources-inner :refer :all]
            )
  (:import (java.io File)))


(def search-news-sources-200-response-data
  {
   (ds/opt :available) int?
   (ds/opt :sources) (s/coll-of search-news-sources-200-response-sources-inner-spec)
   })

(def search-news-sources-200-response-spec
  (ds/spec
    {:name ::search-news-sources-200-response
     :spec search-news-sources-200-response-data}))
