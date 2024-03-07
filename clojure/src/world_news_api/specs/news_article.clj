(ns world-news-api.specs.news-article
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def news-article-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :text) string?
   (ds/opt :summary) string?
   (ds/opt :url) string?
   (ds/opt :image) string?
   (ds/opt :publish_date) string?
   (ds/opt :author) string?
   (ds/opt :language) string?
   (ds/opt :source_country) string?
   (ds/opt :sentiment) float?
   })

(def news-article-spec
  (ds/spec
    {:name ::news-article
     :spec news-article-data}))
