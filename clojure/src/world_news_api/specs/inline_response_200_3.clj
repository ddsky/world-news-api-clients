(ns world-news-api.specs.inline-response-200-3
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-3-data
  {
   (ds/req :latitude) float?
   (ds/req :longitude) float?
   (ds/opt :city) string?
   })

(def inline-response-200-3-spec
  (ds/spec
    {:name ::inline-response-200-3
     :spec inline-response-200-3-data}))
