(ns world-news-api.specs.retrieve-newspaper-front-page-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.retrieve-newspaper-front-page-200-response-front-page :refer :all]
            )
  (:import (java.io File)))


(def retrieve-newspaper-front-page-200-response-data
  {
   (ds/opt :front_page) retrieve-newspaper-front-page-200-response-front-page-spec
   })

(def retrieve-newspaper-front-page-200-response-spec
  (ds/spec
    {:name ::retrieve-newspaper-front-page-200-response
     :spec retrieve-newspaper-front-page-200-response-data}))
