(ns world-news-api.specs.get-geo-coordinates-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-geo-coordinates-200-response-data
  {
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :city) string?
   })

(def get-geo-coordinates-200-response-spec
  (ds/spec
    {:name ::get-geo-coordinates-200-response
     :spec get-geo-coordinates-200-response-data}))
