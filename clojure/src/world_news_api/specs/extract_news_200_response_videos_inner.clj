(ns world-news-api.specs.extract-news-200-response-videos-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-news-200-response-videos-inner-data
  {
   (ds/opt :summary) string?
   (ds/opt :duration) int?
   (ds/opt :thumbnail) string?
   (ds/opt :title) string?
   (ds/opt :url) string?
   })

(def extract-news-200-response-videos-inner-spec
  (ds/spec
    {:name ::extract-news-200-response-videos-inner
     :spec extract-news-200-response-videos-inner-data}))
