(ns world-news-api.specs.top-news-200-response-top-news-inner-news-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def top-news-200-response-top-news-inner-news-inner-data
  {
   (ds/opt :summary) string?
   (ds/opt :image) string?
   (ds/opt :author) string?
   (ds/opt :id) int?
   (ds/opt :text) string?
   (ds/opt :title) string?
   (ds/opt :publish_date) string?
   (ds/opt :url) string?
   (ds/opt :authors) (s/coll-of string?)
   })

(def top-news-200-response-top-news-inner-news-inner-spec
  (ds/spec
    {:name ::top-news-200-response-top-news-inner-news-inner
     :spec top-news-200-response-top-news-inner-news-inner-data}))
