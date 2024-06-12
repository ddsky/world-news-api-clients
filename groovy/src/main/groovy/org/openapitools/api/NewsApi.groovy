package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ExtractNews200Response
import org.openapitools.model.ExtractNewsLinks200Response
import org.openapitools.model.GetGeoCoordinates200Response
import org.openapitools.model.RetrieveNewsArticlesByIds200Response
import org.openapitools.model.SearchNews200Response
import org.openapitools.model.TopNews200Response

class NewsApi {
    String basePath = "https://api.worldnewsapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def extractNews ( String url, Boolean analyze, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }
        // verify required params are set
        if (analyze == null) {
            throw new RuntimeException("missing required params analyze")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (analyze != null) {
            queryParams.put("analyze", analyze)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractNews200Response.class )

    }

    def extractNewsLinks ( String url, Boolean analyze, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-news-links"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }
        // verify required params are set
        if (analyze == null) {
            throw new RuntimeException("missing required params analyze")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (analyze != null) {
            queryParams.put("analyze", analyze)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractNewsLinks200Response.class )

    }

    def getGeoCoordinates ( String location, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/geo-coordinates"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (location == null) {
            throw new RuntimeException("missing required params location")
        }

        if (location != null) {
            queryParams.put("location", location)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetGeoCoordinates200Response.class )

    }

    def newsWebsiteToRSSFeed ( String url, Boolean analyze, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/feed.rss"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }
        // verify required params are set
        if (analyze == null) {
            throw new RuntimeException("missing required params analyze")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (analyze != null) {
            queryParams.put("analyze", analyze)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def retrieveNewsArticlesByIds ( String ids, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ids == null) {
            throw new RuntimeException("missing required params ids")
        }

        if (ids != null) {
            queryParams.put("ids", ids)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetrieveNewsArticlesByIds200Response.class )

    }

    def searchNews ( String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, String sort, String sortDirection, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (text != null) {
            queryParams.put("text", text)
        }
        if (sourceCountries != null) {
            queryParams.put("source-countries", sourceCountries)
        }
        if (language != null) {
            queryParams.put("language", language)
        }
        if (minSentiment != null) {
            queryParams.put("min-sentiment", minSentiment)
        }
        if (maxSentiment != null) {
            queryParams.put("max-sentiment", maxSentiment)
        }
        if (earliestPublishDate != null) {
            queryParams.put("earliest-publish-date", earliestPublishDate)
        }
        if (latestPublishDate != null) {
            queryParams.put("latest-publish-date", latestPublishDate)
        }
        if (newsSources != null) {
            queryParams.put("news-sources", newsSources)
        }
        if (authors != null) {
            queryParams.put("authors", authors)
        }
        if (entities != null) {
            queryParams.put("entities", entities)
        }
        if (locationFilter != null) {
            queryParams.put("location-filter", locationFilter)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchNews200Response.class )

    }

    def topNews ( String sourceCountry, String language, String date, Boolean headlinesOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/top-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (sourceCountry == null) {
            throw new RuntimeException("missing required params sourceCountry")
        }
        // verify required params are set
        if (language == null) {
            throw new RuntimeException("missing required params language")
        }

        if (sourceCountry != null) {
            queryParams.put("source-country", sourceCountry)
        }
        if (language != null) {
            queryParams.put("language", language)
        }
        if (date != null) {
            queryParams.put("date", date)
        }
        if (headlinesOnly != null) {
            queryParams.put("headlines-only", headlinesOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TopNews200Response.class )

    }

}
