(ns world-news-api.specs.newspaper-front-pages-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.newspaper-front-pages-200-response-front-page :refer :all]
            )
  (:import (java.io File)))


(def newspaper-front-pages-200-response-data
  {
   (ds/opt :front_page) newspaper-front-pages-200-response-front-page-spec
   })

(def newspaper-front-pages-200-response-spec
  (ds/spec
    {:name ::newspaper-front-pages-200-response
     :spec newspaper-front-pages-200-response-data}))
