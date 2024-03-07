(ns world-news-api.specs.geo-coordinates-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def geo-coordinates-response-data
  {
   (ds/req :latitude) float?
   (ds/req :longitude) float?
   (ds/opt :city) string?
   })

(def geo-coordinates-response-spec
  (ds/spec
    {:name ::geo-coordinates-response
     :spec geo-coordinates-response-data}))
