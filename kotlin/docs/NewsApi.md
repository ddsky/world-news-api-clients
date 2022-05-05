# NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**geoCoordinates**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News


<a name="extractNews"></a>
# **extractNews**
> InlineResponse2001 extractNews(url, analyze)

Extract News

Extract a news entry from a news site.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.worldnewsapi.client.model.*

val apiInstance = NewsApi()
val url : kotlin.String = https://www.bbc.com/news/world-us-canada-59340789 // kotlin.String | The url of the news.
val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
try {
    val result : InlineResponse2001 = apiInstance.extractNews(url, analyze)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#extractNews")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#extractNews")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The url of the news. |
 **analyze** | **kotlin.Boolean**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="geoCoordinates"></a>
# **geoCoordinates**
> InlineResponse2002 geoCoordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.worldnewsapi.client.model.*

val apiInstance = NewsApi()
val location : kotlin.String = Tokyo, Japan // kotlin.String | The address or name of the location, e.g. Tokyo, Japan.
try {
    val result : InlineResponse2002 = apiInstance.geoCoordinates(location)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#geoCoordinates")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#geoCoordinates")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **kotlin.String**| The address or name of the location, e.g. Tokyo, Japan. |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchNews"></a>
# **searchNews**
> InlineResponse200 searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection)

Search News

Search for news.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.worldnewsapi.client.model.*

val apiInstance = NewsApi()
val text : kotlin.String = hurricane // kotlin.String | The text to match in the news content.
val sourceCountries : kotlin.String = gb,us // kotlin.String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the news, e.g. \"en\" for English.
val minSentiment : kotlin.Double = -0.8 // kotlin.Double | The minimal sentiment of the news in range [-1,1].
val maxSentiment : kotlin.Double = 0.8 // kotlin.Double | The maximal sentiment of the news in range [-1,1].
val earliestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published after this date.
val latestPublishDate : kotlin.String = 2022-05-23 24:16:27 // kotlin.String | The news must have been published before this date.
val newsSources : kotlin.String = https://www.bbc.co.uk // kotlin.String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
val authors : kotlin.String = John Doe // kotlin.String | A comma-separated list of author names. Only news from any of the given authors will be returned.
val entities : kotlin.String = ORG:Tesla // kotlin.String | Filter news by entities, e.g. ORG:Tesla.
val locationFilter : kotlin.String = 51.050407,13.737262,100 // kotlin.String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
val offset : kotlin.Int = 10 // kotlin.Int | The number of news to skip in range [0,1000]
val number : kotlin.Int = 1 // kotlin.Int | The number of news to return in range [1,100]
val sort : kotlin.String = publish-time // kotlin.String | The sorting criteria.
val sortDirection : kotlin.String = desc // kotlin.String | Whether to sort ascending or descending.
try {
    val result : InlineResponse200 = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#searchNews")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#searchNews")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to match in the news content. | [optional]
 **sourceCountries** | **kotlin.String**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional]
 **language** | **kotlin.String**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional]
 **minSentiment** | **kotlin.Double**| The minimal sentiment of the news in range [-1,1]. | [optional]
 **maxSentiment** | **kotlin.Double**| The maximal sentiment of the news in range [-1,1]. | [optional]
 **earliestPublishDate** | **kotlin.String**| The news must have been published after this date. | [optional]
 **latestPublishDate** | **kotlin.String**| The news must have been published before this date. | [optional]
 **newsSources** | **kotlin.String**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional]
 **authors** | **kotlin.String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional]
 **entities** | **kotlin.String**| Filter news by entities, e.g. ORG:Tesla. | [optional]
 **locationFilter** | **kotlin.String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional]
 **offset** | **kotlin.Int**| The number of news to skip in range [0,1000] | [optional]
 **number** | **kotlin.Int**| The number of news to return in range [1,100] | [optional]
 **sort** | **kotlin.String**| The sorting criteria. | [optional] [enum: relevance, publish-time, sentiment]
 **sortDirection** | **kotlin.String**| Whether to sort ascending or descending. | [optional] [enum: asc, desc]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

