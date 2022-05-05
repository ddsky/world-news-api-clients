(ns world-news-api.specs.inline-response-200-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-1-data
  {
   (ds/opt :title) string?
   (ds/opt :text) string?
   (ds/opt :url) string?
   (ds/opt :image) string?
   (ds/opt :author) string?
   (ds/opt :language) string?
   (ds/opt :source_country) string?
   (ds/opt :sentiment) float?
   })

(def inline-response-200-1-spec
  (ds/spec
    {:name ::inline-response-200-1
     :spec inline-response-200-1-data}))
