(ns world-news-api.specs.top-news-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.top-news-200-response-top-news-inner :refer :all]
            )
  (:import (java.io File)))


(def top-news-200-response-data
  {
   (ds/opt :top_news) (s/coll-of top-news-200-response-top-news-inner-spec)
   (ds/opt :language) string?
   (ds/opt :country) string?
   })

(def top-news-200-response-spec
  (ds/spec
    {:name ::top-news-200-response
     :spec top-news-200-response-data}))
