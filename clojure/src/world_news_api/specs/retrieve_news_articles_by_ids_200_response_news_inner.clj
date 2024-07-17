(ns world-news-api.specs.retrieve-news-articles-by-ids-200-response-news-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-news-articles-by-ids-200-response-news-inner-data
  {
   (ds/opt :summary) string?
   (ds/opt :image) string?
   (ds/opt :sentiment) float?
   (ds/opt :language) string?
   (ds/opt :title) string?
   (ds/opt :url) string?
   (ds/opt :source_country) string?
   (ds/opt :id) int?
   (ds/opt :text) string?
   (ds/opt :category) string?
   (ds/opt :publish_date) string?
   (ds/opt :authors) (s/coll-of string?)
   })

(def retrieve-news-articles-by-ids-200-response-news-inner-spec
  (ds/spec
    {:name ::retrieve-news-articles-by-ids-200-response-news-inner
     :spec retrieve-news-articles-by-ids-200-response-news-inner-data}))
