(ns world-news-api.specs.inline-response-200
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.inline-response-200-news :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-data
  {
   (ds/req :offset) int?
   (ds/req :number) int?
   (ds/req :available) int?
   (ds/req :news) (s/coll-of inline-response-200-news-spec)
   })

(def inline-response-200-spec
  (ds/spec
    {:name ::inline-response-200
     :spec inline-response-200-data}))
