package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ExtractLinksResponse
import org.openapitools.model.ExtractNewsResponse
import org.openapitools.model.GeoCoordinatesResponse
import org.openapitools.model.SearchNewsResponse

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
                    ExtractNewsResponse.class )

    }

    def extractNewsLinks ( String url, String apiKey, String prefix, Boolean subDomain, Closure onSuccess, Closure onFailure)  {
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
        if (apiKey == null) {
            throw new RuntimeException("missing required params apiKey")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (prefix != null) {
            queryParams.put("prefix", prefix)
        }
        if (subDomain != null) {
            queryParams.put("sub-domain", subDomain)
        }
        if (apiKey != null) {
            queryParams.put("api-key", apiKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractLinksResponse.class )

    }

    def geoCoordinates ( String location, Closure onSuccess, Closure onFailure)  {
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
                    GeoCoordinatesResponse.class )

    }

    def newsWebsiteToRSSFeed ( String url, String apiKey, Boolean extractNews, Closure onSuccess, Closure onFailure)  {
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
        if (apiKey == null) {
            throw new RuntimeException("missing required params apiKey")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (extractNews != null) {
            queryParams.put("extract-news", extractNews)
        }
        if (apiKey != null) {
            queryParams.put("api-key", apiKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchNews ( String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, Integer offset, Integer number, String sort, String sortDirection, Closure onSuccess, Closure onFailure)  {
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
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchNewsResponse.class )

    }

}
