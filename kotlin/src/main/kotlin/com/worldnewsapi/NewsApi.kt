/**
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.worldnewsapi

import java.io.IOException

import com.worldnewsapi.client.model.InlineResponse200
import com.worldnewsapi.client.model.InlineResponse2001
import com.worldnewsapi.client.model.InlineResponse2002

import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class NewsApi(basePath: kotlin.String = defaultBasePath) : ApiClient(basePath) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.worldnewsapi.com")
        }
    }

    /**
    * Extract News
    * Extract a news entry from a news site.
    * @param url The url of the news. 
    * @param analyze Whether to analyze the news (extract entities etc.) 
    * @return InlineResponse2001
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractNews(url: kotlin.String, analyze: kotlin.Boolean) : InlineResponse2001 {
        val localVarResponse = extractNewsWithHttpInfo(url = url, analyze = analyze)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as InlineResponse2001
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Extract News
    * Extract a news entry from a news site.
    * @param url The url of the news. 
    * @param analyze Whether to analyze the news (extract entities etc.) 
    * @return ApiResponse<InlineResponse2001?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractNewsWithHttpInfo(url: kotlin.String, analyze: kotlin.Boolean) : ApiResponse<InlineResponse2001?> {
        val localVariableConfig = extractNewsRequestConfig(url = url, analyze = analyze)

        return request<Unit, InlineResponse2001>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation extractNews
    *
    * @param url The url of the news. 
    * @param analyze Whether to analyze the news (extract entities etc.) 
    * @return RequestConfig
    */
    fun extractNewsRequestConfig(url: kotlin.String, analyze: kotlin.Boolean) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
                put("analyze", listOf(analyze.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/extract-news",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Get Geo Coordinates
    * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
    * @param location The address or name of the location, e.g. Tokyo, Japan. 
    * @return InlineResponse2002
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun geoCoordinates(location: kotlin.String) : InlineResponse2002 {
        val localVarResponse = geoCoordinatesWithHttpInfo(location = location)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as InlineResponse2002
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Get Geo Coordinates
    * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
    * @param location The address or name of the location, e.g. Tokyo, Japan. 
    * @return ApiResponse<InlineResponse2002?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun geoCoordinatesWithHttpInfo(location: kotlin.String) : ApiResponse<InlineResponse2002?> {
        val localVariableConfig = geoCoordinatesRequestConfig(location = location)

        return request<Unit, InlineResponse2002>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation geoCoordinates
    *
    * @param location The address or name of the location, e.g. Tokyo, Japan. 
    * @return RequestConfig
    */
    fun geoCoordinatesRequestConfig(location: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("location", listOf(location.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/geo-coordinates",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
     * enum for parameter sort
     */
     enum class Sort_searchNews(val value: kotlin.String) {
         @Json(name = "relevance") relevance("relevance"),
         @Json(name = "publish-time") publishMinusTime("publish-time"),
         @Json(name = "sentiment") sentiment("sentiment"),
         ;
     }

    /**
     * enum for parameter sortDirection
     */
     enum class SortDirection_searchNews(val value: kotlin.String) {
         @Json(name = "asc") asc("asc"),
         @Json(name = "desc") desc("desc"),
         ;
     }

    /**
    * Search News
    * Search for news.
    * @param text The text to match in the news content. (optional)
    * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
    * @param language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. (optional)
    * @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
    * @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
    * @param earliestPublishDate The news must have been published after this date. (optional)
    * @param latestPublishDate The news must have been published before this date. (optional)
    * @param newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
    * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    * @param entities Filter news by entities, e.g. ORG:Tesla. (optional)
    * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 (optional)
    * @param offset The number of news to skip in range [0,1000] (optional)
    * @param number The number of news to return in range [1,100] (optional)
    * @param sort The sorting criteria. (optional)
    * @param sortDirection Whether to sort ascending or descending. (optional)
    * @return InlineResponse200
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchNews(text: kotlin.String?, sourceCountries: kotlin.String?, language: kotlin.String?, minSentiment: kotlin.Double?, maxSentiment: kotlin.Double?, earliestPublishDate: kotlin.String?, latestPublishDate: kotlin.String?, newsSources: kotlin.String?, authors: kotlin.String?, entities: kotlin.String?, locationFilter: kotlin.String?, offset: kotlin.Int?, number: kotlin.Int?, sort: Sort_searchNews?, sortDirection: SortDirection_searchNews?) : InlineResponse200 {
        val localVarResponse = searchNewsWithHttpInfo(text = text, sourceCountries = sourceCountries, language = language, minSentiment = minSentiment, maxSentiment = maxSentiment, earliestPublishDate = earliestPublishDate, latestPublishDate = latestPublishDate, newsSources = newsSources, authors = authors, entities = entities, locationFilter = locationFilter, offset = offset, number = number, sort = sort, sortDirection = sortDirection)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as InlineResponse200
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Search News
    * Search for news.
    * @param text The text to match in the news content. (optional)
    * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
    * @param language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. (optional)
    * @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
    * @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
    * @param earliestPublishDate The news must have been published after this date. (optional)
    * @param latestPublishDate The news must have been published before this date. (optional)
    * @param newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
    * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    * @param entities Filter news by entities, e.g. ORG:Tesla. (optional)
    * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 (optional)
    * @param offset The number of news to skip in range [0,1000] (optional)
    * @param number The number of news to return in range [1,100] (optional)
    * @param sort The sorting criteria. (optional)
    * @param sortDirection Whether to sort ascending or descending. (optional)
    * @return ApiResponse<InlineResponse200?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchNewsWithHttpInfo(text: kotlin.String?, sourceCountries: kotlin.String?, language: kotlin.String?, minSentiment: kotlin.Double?, maxSentiment: kotlin.Double?, earliestPublishDate: kotlin.String?, latestPublishDate: kotlin.String?, newsSources: kotlin.String?, authors: kotlin.String?, entities: kotlin.String?, locationFilter: kotlin.String?, offset: kotlin.Int?, number: kotlin.Int?, sort: Sort_searchNews?, sortDirection: SortDirection_searchNews?) : ApiResponse<InlineResponse200?> {
        val localVariableConfig = searchNewsRequestConfig(text = text, sourceCountries = sourceCountries, language = language, minSentiment = minSentiment, maxSentiment = maxSentiment, earliestPublishDate = earliestPublishDate, latestPublishDate = latestPublishDate, newsSources = newsSources, authors = authors, entities = entities, locationFilter = locationFilter, offset = offset, number = number, sort = sort, sortDirection = sortDirection)

        return request<Unit, InlineResponse200>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation searchNews
    *
    * @param text The text to match in the news content. (optional)
    * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
    * @param language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. (optional)
    * @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
    * @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
    * @param earliestPublishDate The news must have been published after this date. (optional)
    * @param latestPublishDate The news must have been published before this date. (optional)
    * @param newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
    * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    * @param entities Filter news by entities, e.g. ORG:Tesla. (optional)
    * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 (optional)
    * @param offset The number of news to skip in range [0,1000] (optional)
    * @param number The number of news to return in range [1,100] (optional)
    * @param sort The sorting criteria. (optional)
    * @param sortDirection Whether to sort ascending or descending. (optional)
    * @return RequestConfig
    */
    fun searchNewsRequestConfig(text: kotlin.String?, sourceCountries: kotlin.String?, language: kotlin.String?, minSentiment: kotlin.Double?, maxSentiment: kotlin.Double?, earliestPublishDate: kotlin.String?, latestPublishDate: kotlin.String?, newsSources: kotlin.String?, authors: kotlin.String?, entities: kotlin.String?, locationFilter: kotlin.String?, offset: kotlin.Int?, number: kotlin.Int?, sort: Sort_searchNews?, sortDirection: SortDirection_searchNews?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (text != null) {
                    put("text", listOf(text.toString()))
                }
                if (sourceCountries != null) {
                    put("source-countries", listOf(sourceCountries.toString()))
                }
                if (language != null) {
                    put("language", listOf(language.toString()))
                }
                if (minSentiment != null) {
                    put("min-sentiment", listOf(minSentiment.toString()))
                }
                if (maxSentiment != null) {
                    put("max-sentiment", listOf(maxSentiment.toString()))
                }
                if (earliestPublishDate != null) {
                    put("earliest-publish-date", listOf(earliestPublishDate.toString()))
                }
                if (latestPublishDate != null) {
                    put("latest-publish-date", listOf(latestPublishDate.toString()))
                }
                if (newsSources != null) {
                    put("news-sources", listOf(newsSources.toString()))
                }
                if (authors != null) {
                    put("authors", listOf(authors.toString()))
                }
                if (entities != null) {
                    put("entities", listOf(entities.toString()))
                }
                if (locationFilter != null) {
                    put("location-filter", listOf(locationFilter.toString()))
                }
                if (offset != null) {
                    put("offset", listOf(offset.toString()))
                }
                if (number != null) {
                    put("number", listOf(number.toString()))
                }
                if (sort != null) {
                    put("sort", listOf(sort.toString()))
                }
                if (sortDirection != null) {
                    put("sort-direction", listOf(sortDirection.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/search-news",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

}
