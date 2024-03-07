/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package worldnewsapi.apis

import java.io.IOException
import okhttp3.OkHttpClient
import okhttp3.HttpUrl

import worldnewsapi.models.ExtractLinksResponse
import worldnewsapi.models.ExtractNewsResponse
import worldnewsapi.models.GeoCoordinatesResponse
import worldnewsapi.models.SearchNewsResponse

import com.squareup.moshi.Json

import worldnewsapi.infrastructure.ApiClient
import worldnewsapi.infrastructure.ApiResponse
import worldnewsapi.infrastructure.ClientException
import worldnewsapi.infrastructure.ClientError
import worldnewsapi.infrastructure.ServerException
import worldnewsapi.infrastructure.ServerError
import worldnewsapi.infrastructure.MultiValueMap
import worldnewsapi.infrastructure.PartConfig
import worldnewsapi.infrastructure.RequestConfig
import worldnewsapi.infrastructure.RequestMethod
import worldnewsapi.infrastructure.ResponseType
import worldnewsapi.infrastructure.Success
import worldnewsapi.infrastructure.toMultiValue

class NewsApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
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
     * @param analyze Whether to analyze the news (extract entities etc.) (default to false)
     * @return ExtractNewsResponse
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractNews(url: kotlin.String, analyze: kotlin.Boolean = false) : ExtractNewsResponse {
        val localVarResponse = extractNewsWithHttpInfo(url = url, analyze = analyze)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractNewsResponse
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Extract News
     * Extract a news entry from a news site.
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.) (default to false)
     * @return ApiResponse<ExtractNewsResponse?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractNewsWithHttpInfo(url: kotlin.String, analyze: kotlin.Boolean) : ApiResponse<ExtractNewsResponse?> {
        val localVariableConfig = extractNewsRequestConfig(url = url, analyze = analyze)

        return request<Unit, ExtractNewsResponse>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractNews
     *
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.) (default to false)
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
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Extract News Links
     * Extract a news links from a news website. 
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param prefix The prefix the news links must start with. (optional)
     * @param subDomain Whether to include links to news on sub-domains. (optional)
     * @return ExtractLinksResponse
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractNewsLinks(url: kotlin.String, apiKey: kotlin.String, prefix: kotlin.String? = null, subDomain: kotlin.Boolean? = null) : ExtractLinksResponse {
        val localVarResponse = extractNewsLinksWithHttpInfo(url = url, apiKey = apiKey, prefix = prefix, subDomain = subDomain)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractLinksResponse
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Extract News Links
     * Extract a news links from a news website. 
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param prefix The prefix the news links must start with. (optional)
     * @param subDomain Whether to include links to news on sub-domains. (optional)
     * @return ApiResponse<ExtractLinksResponse?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractNewsLinksWithHttpInfo(url: kotlin.String, apiKey: kotlin.String, prefix: kotlin.String?, subDomain: kotlin.Boolean?) : ApiResponse<ExtractLinksResponse?> {
        val localVariableConfig = extractNewsLinksRequestConfig(url = url, apiKey = apiKey, prefix = prefix, subDomain = subDomain)

        return request<Unit, ExtractLinksResponse>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractNewsLinks
     *
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param prefix The prefix the news links must start with. (optional)
     * @param subDomain Whether to include links to news on sub-domains. (optional)
     * @return RequestConfig
     */
    fun extractNewsLinksRequestConfig(url: kotlin.String, apiKey: kotlin.String, prefix: kotlin.String?, subDomain: kotlin.Boolean?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
                if (prefix != null) {
                    put("prefix", listOf(prefix.toString()))
                }
                if (subDomain != null) {
                    put("sub-domain", listOf(subDomain.toString()))
                }
                put("api-key", listOf(apiKey.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/extract-news-links",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Get Geo Coordinates
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * @param location The address or name of the location, e.g. Tokyo, Japan.
     * @return GeoCoordinatesResponse
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun geoCoordinates(location: kotlin.String) : GeoCoordinatesResponse {
        val localVarResponse = geoCoordinatesWithHttpInfo(location = location)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as GeoCoordinatesResponse
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Get Geo Coordinates
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * @param location The address or name of the location, e.g. Tokyo, Japan.
     * @return ApiResponse<GeoCoordinatesResponse?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun geoCoordinatesWithHttpInfo(location: kotlin.String) : ApiResponse<GeoCoordinatesResponse?> {
        val localVariableConfig = geoCoordinatesRequestConfig(location = location)

        return request<Unit, GeoCoordinatesResponse>(
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
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * News Website to RSS Feed
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param extractNews Whether extract news and add information such as description, publish date, and image to each item. (optional)
     * @return kotlin.Any
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun newsWebsiteToRSSFeed(url: kotlin.String, apiKey: kotlin.String, extractNews: kotlin.Boolean? = null) : kotlin.Any {
        val localVarResponse = newsWebsiteToRSSFeedWithHttpInfo(url = url, apiKey = apiKey, extractNews = extractNews)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.Any
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * News Website to RSS Feed
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param extractNews Whether extract news and add information such as description, publish date, and image to each item. (optional)
     * @return ApiResponse<kotlin.Any?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun newsWebsiteToRSSFeedWithHttpInfo(url: kotlin.String, apiKey: kotlin.String, extractNews: kotlin.Boolean?) : ApiResponse<kotlin.Any?> {
        val localVariableConfig = newsWebsiteToRSSFeedRequestConfig(url = url, apiKey = apiKey, extractNews = extractNews)

        return request<Unit, kotlin.Any>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation newsWebsiteToRSSFeed
     *
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param extractNews Whether extract news and add information such as description, publish date, and image to each item. (optional)
     * @return RequestConfig
     */
    fun newsWebsiteToRSSFeedRequestConfig(url: kotlin.String, apiKey: kotlin.String, extractNews: kotlin.Boolean?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
                if (extractNews != null) {
                    put("extract-news", listOf(extractNews.toString()))
                }
                put("api-key", listOf(apiKey.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.GET,
            path = "/feed.rss",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * enum for parameter sort
     */
     enum class SortSearchNews(val value: kotlin.String) {
         @Json(name = "relevance") relevance("relevance"),
         @Json(name = "publish-time") publishMinusTime("publish-time"),
         @Json(name = "sentiment") sentiment("sentiment")
     }

    /**
     * enum for parameter sortDirection
     */
     enum class SortDirectionSearchNews(val value: kotlin.String) {
         @Json(name = "asc") asc("asc"),
         @Json(name = "desc") desc("desc")
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
     * @return SearchNewsResponse
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchNews(text: kotlin.String? = null, sourceCountries: kotlin.String? = null, language: kotlin.String? = null, minSentiment: kotlin.Double? = null, maxSentiment: kotlin.Double? = null, earliestPublishDate: kotlin.String? = null, latestPublishDate: kotlin.String? = null, newsSources: kotlin.String? = null, authors: kotlin.String? = null, entities: kotlin.String? = null, locationFilter: kotlin.String? = null, offset: kotlin.Int? = null, number: kotlin.Int? = null, sort: SortSearchNews? = null, sortDirection: SortDirectionSearchNews? = null) : SearchNewsResponse {
        val localVarResponse = searchNewsWithHttpInfo(text = text, sourceCountries = sourceCountries, language = language, minSentiment = minSentiment, maxSentiment = maxSentiment, earliestPublishDate = earliestPublishDate, latestPublishDate = latestPublishDate, newsSources = newsSources, authors = authors, entities = entities, locationFilter = locationFilter, offset = offset, number = number, sort = sort, sortDirection = sortDirection)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as SearchNewsResponse
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
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
     * @return ApiResponse<SearchNewsResponse?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchNewsWithHttpInfo(text: kotlin.String?, sourceCountries: kotlin.String?, language: kotlin.String?, minSentiment: kotlin.Double?, maxSentiment: kotlin.Double?, earliestPublishDate: kotlin.String?, latestPublishDate: kotlin.String?, newsSources: kotlin.String?, authors: kotlin.String?, entities: kotlin.String?, locationFilter: kotlin.String?, offset: kotlin.Int?, number: kotlin.Int?, sort: SortSearchNews?, sortDirection: SortDirectionSearchNews?) : ApiResponse<SearchNewsResponse?> {
        val localVariableConfig = searchNewsRequestConfig(text = text, sourceCountries = sourceCountries, language = language, minSentiment = minSentiment, maxSentiment = maxSentiment, earliestPublishDate = earliestPublishDate, latestPublishDate = latestPublishDate, newsSources = newsSources, authors = authors, entities = entities, locationFilter = locationFilter, offset = offset, number = number, sort = sort, sortDirection = sortDirection)

        return request<Unit, SearchNewsResponse>(
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
    fun searchNewsRequestConfig(text: kotlin.String?, sourceCountries: kotlin.String?, language: kotlin.String?, minSentiment: kotlin.Double?, maxSentiment: kotlin.Double?, earliestPublishDate: kotlin.String?, latestPublishDate: kotlin.String?, newsSources: kotlin.String?, authors: kotlin.String?, entities: kotlin.String?, locationFilter: kotlin.String?, offset: kotlin.Int?, number: kotlin.Int?, sort: SortSearchNews?, sortDirection: SortDirectionSearchNews?) : RequestConfig<Unit> {
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
                    put("sort", listOf(sort.value))
                }
                if (sortDirection != null) {
                    put("sort-direction", listOf(sortDirection.value))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/search-news",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}