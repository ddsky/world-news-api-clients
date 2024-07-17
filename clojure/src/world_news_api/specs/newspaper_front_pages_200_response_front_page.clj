(ns world-news-api.specs.newspaper-front-pages-200-response-front-page
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def newspaper-front-pages-200-response-front-page-data
  {
   (ds/opt :name) string?
   (ds/opt :date) string?
   (ds/opt :country) string?
   (ds/opt :image) string?
   (ds/opt :language) string?
   })

(def newspaper-front-pages-200-response-front-page-spec
  (ds/spec
    {:name ::newspaper-front-pages-200-response-front-page
     :spec newspaper-front-pages-200-response-front-page-data}))
