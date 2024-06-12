(ns world-news-api.specs.retrieve-news-articles-by-ids-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [world-news-api.specs.retrieve-news-articles-by-ids-200-response-news-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-news-articles-by-ids-200-response-data
  {
   (ds/opt :news) (s/coll-of retrieve-news-articles-by-ids-200-response-news-inner-spec)
   })

(def retrieve-news-articles-by-ids-200-response-spec
  (ds/spec
    {:name ::retrieve-news-articles-by-ids-200-response
     :spec retrieve-news-articles-by-ids-200-response-data}))
