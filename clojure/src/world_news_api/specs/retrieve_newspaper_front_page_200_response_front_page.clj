(ns world-news-api.specs.retrieve-newspaper-front-page-200-response-front-page
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-newspaper-front-page-200-response-front-page-data
  {
   (ds/opt :name) string?
   (ds/opt :date) string?
   (ds/opt :country) string?
   (ds/opt :image) string?
   (ds/opt :language) string?
   })

(def retrieve-newspaper-front-page-200-response-front-page-spec
  (ds/spec
    {:name ::retrieve-newspaper-front-page-200-response-front-page
     :spec retrieve-newspaper-front-page-200-response-front-page-data}))
