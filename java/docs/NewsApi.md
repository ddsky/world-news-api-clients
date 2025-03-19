# NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News |
| [**extractNewsLinks**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links |
| [**getGeoCoordinates**](NewsApi.md#getGeoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates |
| [**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed |
| [**retrieveNewsArticlesByIds**](NewsApi.md#retrieveNewsArticlesByIds) | **GET** /retrieve-news | Retrieve News Articles by Ids |
| [**retrieveNewspaperFrontPage**](NewsApi.md#retrieveNewspaperFrontPage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page |
| [**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News |
| [**searchNewsSources**](NewsApi.md#searchNewsSources) | **GET** /search-news-sources | Search News Sources |
| [**topNews**](NewsApi.md#topNews) | **GET** /top-news | Top News |


<a id="extractNews"></a>
# **extractNews**
> ExtractNews200Response extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

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
    Boolean analyze = true; // Boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.)
    try {
      ExtractNews200Response result = apiInstance.extractNews(url, analyze);
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

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **url** | **String**| The url of the news. | |
| **analyze** | **Boolean**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] |

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="extractNewsLinks"></a>
# **extractNewsLinks**
> ExtractNewsLinks200Response extractNewsLinks(url, analyze)

Extract News Links

Extract news links from a news website.

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
    Boolean analyze = true; // Boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.)
    try {
      ExtractNewsLinks200Response result = apiInstance.extractNewsLinks(url, analyze);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#extractNewsLinks");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **url** | **String**| The url of the news. | |
| **analyze** | **Boolean**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] |

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="getGeoCoordinates"></a>
# **getGeoCoordinates**
> GetGeoCoordinates200Response getGeoCoordinates(location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

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
    String location = "Tokyo, Japan"; // String | The address or name of the location.
    try {
      GetGeoCoordinates200Response result = apiInstance.getGeoCoordinates(location);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#getGeoCoordinates");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **location** | **String**| The address or name of the location. | |

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="newsWebsiteToRSSFeed"></a>
# **newsWebsiteToRSSFeed**
> Object newsWebsiteToRSSFeed(url, extractNews)

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
    String url = "https://www.bbc.com/"; // String | The url of the site for which an RSS feed should be created.
    Boolean extractNews = true; // Boolean | Whether to extract the news for each link instead of just returning the link.
    try {
      Object result = apiInstance.newsWebsiteToRSSFeed(url, extractNews);
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

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **url** | **String**| The url of the site for which an RSS feed should be created. | |
| **extractNews** | **Boolean**| Whether to extract the news for each link instead of just returning the link. | [optional] |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="retrieveNewsArticlesByIds"></a>
# **retrieveNewsArticlesByIds**
> RetrieveNewsArticlesByIds200Response retrieveNewsArticlesByIds(ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

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
    String ids = "2352,2354"; // String | A comma separated list of news ids.
    try {
      RetrieveNewsArticlesByIds200Response result = apiInstance.retrieveNewsArticlesByIds(ids);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#retrieveNewsArticlesByIds");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ids** | **String**| A comma separated list of news ids. | |

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="retrieveNewspaperFrontPage"></a>
# **retrieveNewspaperFrontPage**
> RetrieveNewspaperFrontPage200Response retrieveNewspaperFrontPage(sourceCountry, sourceName, date)

Retrieve Newspaper Front Page

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here&#39;s an example of some of today&#39;s newspapers:

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
    String sourceCountry = "au"; // String | The ISO 3166 country code of the newspaper publication.
    String sourceName = "herald-sun"; // String | The identifier of the publication see attached list.
    String date = "2024-07-09"; // String | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
    try {
      RetrieveNewspaperFrontPage200Response result = apiInstance.retrieveNewspaperFrontPage(sourceCountry, sourceName, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#retrieveNewspaperFrontPage");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **sourceCountry** | **String**| The ISO 3166 country code of the newspaper publication. | [optional] |
| **sourceName** | **String**| The identifier of the publication see attached list. | [optional] |
| **date** | **String**| The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional] |

### Return type

[**RetrieveNewspaperFrontPage200Response**](RetrieveNewspaperFrontPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="searchNews"></a>
# **searchNews**
> SearchNews200Response searchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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
    String text = "tesla"; // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\".
    String textMatchIndexes = "title,content"; // String | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
    String sourceCountry = "us"; // String | The ISO 3166 country code from which the news should originate.
    String language = "en"; // String | The ISO 6391 language code of the news.
    Double minSentiment = -0.8D; // Double | The minimal sentiment of the news in range [-1,1].
    Double maxSentiment = 0.8D; // Double | The maximal sentiment of the news in range [-1,1].
    String earliestPublishDate = "2022-04-22 16:12:35"; // String | The news must have been published after this date.
    String latestPublishDate = "2022-04-22 16:12:35"; // String | The news must have been published before this date.
    String newsSources = "https://www.bbc.co.uk"; // String | A comma-separated list of news sources from which the news should originate.
    String authors = "John Doe"; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
    String categories = "politics,sports"; // String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
    String entities = "ORG:Tesla,PER:Elon Musk"; // String | Filter news by entities (see semantic types).
    String locationFilter = "51.050407, 13.737262, 20"; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
    String sort = "publish-time"; // String | The sorting criteria (publish-time).
    String sortDirection = "ASC"; // String | Whether to sort ascending or descending (ASC or DESC).
    Integer offset = 0; // Integer | The number of news to skip in range [0,100000]
    Integer number = 10; // Integer | The number of news to return in range [1,100]
    try {
      SearchNews200Response result = apiInstance.searchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
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

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | [optional] |
| **textMatchIndexes** | **String**| If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | [optional] |
| **sourceCountry** | **String**| The ISO 3166 country code from which the news should originate. | [optional] |
| **language** | **String**| The ISO 6391 language code of the news. | [optional] |
| **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional] |
| **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] |
| **latestPublishDate** | **String**| The news must have been published before this date. | [optional] |
| **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] |
| **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **categories** | **String**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | [optional] |
| **entities** | **String**| Filter news by entities (see semantic types). | [optional] |
| **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] |
| **sort** | **String**| The sorting criteria (publish-time). | [optional] |
| **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **Integer**| The number of news to skip in range [0,100000] | [optional] |
| **number** | **Integer**| The number of news to return in range [1,100] | [optional] |

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="searchNewsSources"></a>
# **searchNewsSources**
> SearchNewsSources200Response searchNewsSources(name)

Search News Sources

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

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
    String name = "bbc"; // String | The (partial) name of the source.
    try {
      SearchNewsSources200Response result = apiInstance.searchNewsSources(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#searchNewsSources");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| The (partial) name of the source. | |

### Return type

[**SearchNewsSources200Response**](SearchNewsSources200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="topNews"></a>
# **topNews**
> TopNews200Response topNews(sourceCountry, language, date, headlinesOnly)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

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
    String sourceCountry = "us"; // String | The ISO 3166 country code of the country for which top news should be retrieved.
    String language = "en"; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
    String date = "2024-05-30"; // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
    Boolean headlinesOnly = false; // Boolean | Whether to only return basic information such as id, title, and url of the news.
    try {
      TopNews200Response result = apiInstance.topNews(sourceCountry, language, date, headlinesOnly);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#topNews");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | |
| **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | |
| **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] |
| **headlinesOnly** | **Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] |

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

