(ns world-news-api.specs.extract-news-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-news-200-response-data
  {
   (ds/opt :title) string?
   (ds/opt :text) string?
   (ds/opt :url) string?
   (ds/opt :image) string?
   (ds/opt :publish_date) string?
   (ds/opt :author) string?
   (ds/opt :language) string?
   (ds/opt :source_country) string?
   (ds/opt :sentiment) float?
   })

(def extract-news-200-response-spec
  (ds/spec
    {:name ::extract-news-200-response
     :spec extract-news-200-response-data}))
