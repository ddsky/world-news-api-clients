(ns world-news-api.specs.search-news-sources-200-response-sources-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-news-sources-200-response-sources-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :url) string?
   (ds/opt :language) string?
   })

(def search-news-sources-200-response-sources-inner-spec
  (ds/spec
    {:name ::search-news-sources-200-response-sources-inner
     :spec search-news-sources-200-response-sources-inner-data}))
