# NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNews_0**](NewsApi.md#extractNews_0) | **GET** /extract-news-links | Extract News
[**geoCoordinates**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News


<a name="extractNews"></a>
# **extractNews**
> InlineResponse2001 extractNews(url, analyze)

Extract News

Extract a news entry from a news site.

### Example
```java
// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String url = "https://www.bbc.com/news/world-us-canada-59340789"; // String | The url of the news.
    Boolean analyze = false; // Boolean | Whether to analyze the news (extract entities etc.)
    try {
      InlineResponse2001 result = apiInstance.extractNews(url, analyze);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#extractNews");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. |
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Extracted news. |  -  |

<a name="extractNews_0"></a>
# **extractNews_0**
> Object extractNews_0(url, apiKey, prefix, subDomain)

Extract News

Extract a news links from a news website. 

### Example
```java
// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String url = "https://nytimes.com"; // String | The url from which links should be extracted.
    String apiKey = "abcd1234"; // String | Your API key.
    String prefix = ""; // String | The prefix the news links must start with.
    Boolean subDomain = true; // Boolean | Whether to include links to news on sub-domains.
    try {
      Object result = apiInstance.extractNews_0(url, apiKey, prefix, subDomain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#extractNews_0");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. |
 **apiKey** | **String**| Your API key. |
 **prefix** | **String**| The prefix the news links must start with. | [optional]
 **subDomain** | **Boolean**| Whether to include links to news on sub-domains. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: , application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

<a name="geoCoordinates"></a>
# **geoCoordinates**
> InlineResponse2002 geoCoordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```java
// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String location = "Tokyo, Japan"; // String | The address or name of the location, e.g. Tokyo, Japan.
    try {
      InlineResponse2002 result = apiInstance.geoCoordinates(location);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#geoCoordinates");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location, e.g. Tokyo, Japan. |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The coordinates of the location. |  -  |
**404** | Not Found |  -  |

<a name="newsWebsiteToRSSFeed"></a>
# **newsWebsiteToRSSFeed**
> Object newsWebsiteToRSSFeed(url, apiKey, extractNews)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Example
```java
// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String url = "https://nytimes.com"; // String | The url from which links should be extracted.
    String apiKey = "abcd1234"; // String | Your API key.
    Boolean extractNews = false; // Boolean | Whether extract news and add information such as description, publish date, and image to each item.
    try {
      Object result = apiInstance.newsWebsiteToRSSFeed(url, apiKey, extractNews);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#newsWebsiteToRSSFeed");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. |
 **apiKey** | **String**| Your API key. |
 **extractNews** | **Boolean**| Whether extract news and add information such as description, publish date, and image to each item. | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: , application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

<a name="searchNews"></a>
# **searchNews**
> InlineResponse200 searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection)

Search News

Search for news.

### Example
```java
// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String text = "hurricane"; // String | The text to match in the news content.
    String sourceCountries = "us,uk"; // String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
    String language = "en"; // String | The ISO 6391 language code of the news, e.g. \"en\" for English.
    Double minSentiment = -0.8D; // Double | The minimal sentiment of the news in range [-1,1].
    Double maxSentiment = 0.8D; // Double | The maximal sentiment of the news in range [-1,1].
    String earliestPublishDate = "2022-04-22 16:12:35"; // String | The news must have been published after this date.
    String latestPublishDate = "2022-05-23 24:16:27"; // String | The news must have been published before this date.
    String newsSources = "https://www.bbc.co.uk"; // String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
    String authors = "John Doe"; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
    String entities = "ORG:Tesla"; // String | Filter news by entities, e.g. ORG:Tesla.
    String locationFilter = "51.050407,13.737262,100"; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
    Integer offset = 10; // Integer | The number of news to skip in range [0,1000]
    Integer number = 1; // Integer | The number of news to return in range [1,100]
    String sort = "relevance"; // String | The sorting criteria.
    String sortDirection = "asc"; // String | Whether to sort ascending or descending.
    try {
      InlineResponse200 result = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#searchNews");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content. | [optional]
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional]
 **language** | **String**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional]
 **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional]
 **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional]
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional]
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional]
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional]
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional]
 **entities** | **String**| Filter news by entities, e.g. ORG:Tesla. | [optional]
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional]
 **offset** | **Integer**| The number of news to skip in range [0,1000] | [optional]
 **number** | **Integer**| The number of news to return in range [1,100] | [optional]
 **sort** | **String**| The sorting criteria. | [optional] [enum: relevance, publish-time, sentiment]
 **sortDirection** | **String**| Whether to sort ascending or descending. | [optional] [enum: asc, desc]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of news. |  -  |

