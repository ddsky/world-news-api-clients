(ns world-news-api.specs.extract-links-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-links-response-data
  {
   (ds/opt :news_links) (s/coll-of string?)
   })

(def extract-links-response-spec
  (ds/spec
    {:name ::extract-links-response
     :spec extract-links-response-data}))
