(ns world-news-api.specs.extract-news-links-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-news-links-200-response-data
  {
   (ds/opt :news_links) (s/coll-of string?)
   })

(def extract-news-links-200-response-spec
  (ds/spec
    {:name ::extract-news-links-200-response
     :spec extract-news-links-200-response-data}))
