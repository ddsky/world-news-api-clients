# worldnewsapi.Api.NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ExtractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News |
| [**ExtractNewsLinks**](NewsApi.md#extractnewslinks) | **GET** /extract-news-links | Extract News Links |
| [**GetGeoCoordinates**](NewsApi.md#getgeocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates |
| [**NewsWebsiteToRSSFeed**](NewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed |
| [**RetrieveNewsArticlesByIds**](NewsApi.md#retrievenewsarticlesbyids) | **GET** /retrieve-news | Retrieve News Articles by Ids |
| [**RetrieveNewspaperFrontPage**](NewsApi.md#retrievenewspaperfrontpage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page |
| [**SearchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News |
| [**SearchNewsSources**](NewsApi.md#searchnewssources) | **GET** /search-news-sources | Search News Sources |
| [**TopNews**](NewsApi.md#topnews) | **GET** /top-news | Top News |

<a id="extractnews"></a>
# **ExtractNews**
> ExtractNews200Response ExtractNews (string url, bool? analyze = null)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class ExtractNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var url = https://www.bbc.com/news/world-us-canada-59340789;  // string | The url of the news.
            var analyze = true;  // bool? | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional) 

            try
            {
                // Extract News
                ExtractNews200Response result = apiInstance.ExtractNews(url, analyze);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract News
    ApiResponse<ExtractNews200Response> response = apiInstance.ExtractNewsWithHttpInfo(url, analyze);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.ExtractNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the news. |  |
| **analyze** | **bool?** | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="extractnewslinks"></a>
# **ExtractNewsLinks**
> ExtractNewsLinks200Response ExtractNewsLinks (string url, bool? analyze = null)

Extract News Links

Extract news links from a news website.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class ExtractNewsLinksExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var url = https://www.bbc.com/news/world-us-canada-59340789;  // string | The url of the news.
            var analyze = true;  // bool? | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional) 

            try
            {
                // Extract News Links
                ExtractNewsLinks200Response result = apiInstance.ExtractNewsLinks(url, analyze);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNewsLinks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractNewsLinksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract News Links
    ApiResponse<ExtractNewsLinks200Response> response = apiInstance.ExtractNewsLinksWithHttpInfo(url, analyze);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.ExtractNewsLinksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the news. |  |
| **analyze** | **bool?** | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getgeocoordinates"></a>
# **GetGeoCoordinates**
> GetGeoCoordinates200Response GetGeoCoordinates (string location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class GetGeoCoordinatesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var location = Tokyo, Japan;  // string | The address or name of the location.

            try
            {
                // Get Geo Coordinates
                GetGeoCoordinates200Response result = apiInstance.GetGeoCoordinates(location);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.GetGeoCoordinates: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetGeoCoordinatesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Geo Coordinates
    ApiResponse<GetGeoCoordinates200Response> response = apiInstance.GetGeoCoordinatesWithHttpInfo(location);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.GetGeoCoordinatesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **location** | **string** | The address or name of the location. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="newswebsitetorssfeed"></a>
# **NewsWebsiteToRSSFeed**
> Object NewsWebsiteToRSSFeed (string url, bool? extractNews = null)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class NewsWebsiteToRSSFeedExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var url = https://www.bbc.com/;  // string | The url of the site for which an RSS feed should be created.
            var extractNews = true;  // bool? | Whether to extract the news for each link instead of just returning the link. (optional) 

            try
            {
                // News Website to RSS Feed
                Object result = apiInstance.NewsWebsiteToRSSFeed(url, extractNews);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.NewsWebsiteToRSSFeed: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the NewsWebsiteToRSSFeedWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // News Website to RSS Feed
    ApiResponse<Object> response = apiInstance.NewsWebsiteToRSSFeedWithHttpInfo(url, extractNews);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.NewsWebsiteToRSSFeedWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the site for which an RSS feed should be created. |  |
| **extractNews** | **bool?** | Whether to extract the news for each link instead of just returning the link. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="retrievenewsarticlesbyids"></a>
# **RetrieveNewsArticlesByIds**
> RetrieveNewsArticlesByIds200Response RetrieveNewsArticlesByIds (string ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class RetrieveNewsArticlesByIdsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var ids = 2352,2354;  // string | A comma separated list of news ids.

            try
            {
                // Retrieve News Articles by Ids
                RetrieveNewsArticlesByIds200Response result = apiInstance.RetrieveNewsArticlesByIds(ids);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.RetrieveNewsArticlesByIds: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrieveNewsArticlesByIdsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve News Articles by Ids
    ApiResponse<RetrieveNewsArticlesByIds200Response> response = apiInstance.RetrieveNewsArticlesByIdsWithHttpInfo(ids);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.RetrieveNewsArticlesByIdsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ids** | **string** | A comma separated list of news ids. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="retrievenewspaperfrontpage"></a>
# **RetrieveNewspaperFrontPage**
> RetrieveNewspaperFrontPage200Response RetrieveNewspaperFrontPage (string? sourceCountry = null, string? sourceName = null, string? date = null)

Retrieve Newspaper Front Page

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class RetrieveNewspaperFrontPageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var sourceCountry = au;  // string? | The ISO 3166 country code of the newspaper publication. (optional) 
            var sourceName = herald-sun;  // string? | The identifier of the publication see attached list. (optional) 
            var date = 2024-07-09;  // string? | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. (optional) 

            try
            {
                // Retrieve Newspaper Front Page
                RetrieveNewspaperFrontPage200Response result = apiInstance.RetrieveNewspaperFrontPage(sourceCountry, sourceName, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.RetrieveNewspaperFrontPage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrieveNewspaperFrontPageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve Newspaper Front Page
    ApiResponse<RetrieveNewspaperFrontPage200Response> response = apiInstance.RetrieveNewspaperFrontPageWithHttpInfo(sourceCountry, sourceName, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.RetrieveNewspaperFrontPageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sourceCountry** | **string?** | The ISO 3166 country code of the newspaper publication. | [optional]  |
| **sourceName** | **string?** | The identifier of the publication see attached list. | [optional]  |
| **date** | **string?** | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchnews"></a>
# **SearchNews**
> SearchNews200Response SearchNews (string? text = null, string? textMatchIndexes = null, string? sourceCountry = null, string? language = null, double? minSentiment = null, double? maxSentiment = null, string? earliestPublishDate = null, string? latestPublishDate = null, string? newsSources = null, string? authors = null, string? categories = null, string? entities = null, string? locationFilter = null, string? sort = null, string? sortDirection = null, int? offset = null, int? number = null)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class SearchNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var text = tesla;  // string? | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\". (optional) 
            var textMatchIndexes = title,content;  // string? | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. (optional) 
            var sourceCountry = us;  // string? | The ISO 3166 country code from which the news should originate. (optional) 
            var language = en;  // string? | The ISO 6391 language code of the news. (optional) 
            var minSentiment = -0.8;  // double? | The minimal sentiment of the news in range [-1,1]. (optional) 
            var maxSentiment = 0.8;  // double? | The maximal sentiment of the news in range [-1,1]. (optional) 
            var earliestPublishDate = 2022-04-22 16:12:35;  // string? | The news must have been published after this date. (optional) 
            var latestPublishDate = 2022-04-22 16:12:35;  // string? | The news must have been published before this date. (optional) 
            var newsSources = https://www.bbc.co.uk;  // string? | A comma-separated list of news sources from which the news should originate. (optional) 
            var authors = John Doe;  // string? | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional) 
            var categories = politics,sports;  // string? | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. (optional) 
            var entities = ORG:Tesla,PER:Elon Musk;  // string? | Filter news by entities (see semantic types). (optional) 
            var locationFilter = 51.050407, 13.737262, 20;  // string? | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional) 
            var sort = publish-time;  // string? | The sorting criteria (publish-time). (optional) 
            var sortDirection = ASC;  // string? | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // int? | The number of news to skip in range [0,100000] (optional) 
            var number = 10;  // int? | The number of news to return in range [1,100] (optional) 

            try
            {
                // Search News
                SearchNews200Response result = apiInstance.SearchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.SearchNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search News
    ApiResponse<SearchNews200Response> response = apiInstance.SearchNewsWithHttpInfo(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.SearchNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **text** | **string?** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | [optional]  |
| **textMatchIndexes** | **string?** | If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | [optional]  |
| **sourceCountry** | **string?** | The ISO 3166 country code from which the news should originate. | [optional]  |
| **language** | **string?** | The ISO 6391 language code of the news. | [optional]  |
| **minSentiment** | **double?** | The minimal sentiment of the news in range [-1,1]. | [optional]  |
| **maxSentiment** | **double?** | The maximal sentiment of the news in range [-1,1]. | [optional]  |
| **earliestPublishDate** | **string?** | The news must have been published after this date. | [optional]  |
| **latestPublishDate** | **string?** | The news must have been published before this date. | [optional]  |
| **newsSources** | **string?** | A comma-separated list of news sources from which the news should originate. | [optional]  |
| **authors** | **string?** | A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional]  |
| **categories** | **string?** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | [optional]  |
| **entities** | **string?** | Filter news by entities (see semantic types). | [optional]  |
| **locationFilter** | **string?** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional]  |
| **sort** | **string?** | The sorting criteria (publish-time). | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **offset** | **int?** | The number of news to skip in range [0,100000] | [optional]  |
| **number** | **int?** | The number of news to return in range [1,100] | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchnewssources"></a>
# **SearchNewsSources**
> SearchNewsSources200Response SearchNewsSources (string name)

Search News Sources

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class SearchNewsSourcesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var name = bbc;  // string | The (partial) name of the source.

            try
            {
                // Search News Sources
                SearchNewsSources200Response result = apiInstance.SearchNewsSources(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.SearchNewsSources: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchNewsSourcesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search News Sources
    ApiResponse<SearchNewsSources200Response> response = apiInstance.SearchNewsSourcesWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.SearchNewsSourcesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | The (partial) name of the source. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="topnews"></a>
# **TopNews**
> TopNews200Response TopNews (string sourceCountry, string language, string? date = null, bool? headlinesOnly = null)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using worldnewsapi.Api;
using worldnewsapi.Client;
using worldnewsapi.Model;

namespace Example
{
    public class TopNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.worldnewsapi.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var sourceCountry = us;  // string | The ISO 3166 country code of the country for which top news should be retrieved.
            var language = en;  // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
            var date = 2024-05-30;  // string? | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional) 
            var headlinesOnly = false;  // bool? | Whether to only return basic information such as id, title, and url of the news. (optional) 

            try
            {
                // Top News
                TopNews200Response result = apiInstance.TopNews(sourceCountry, language, date, headlinesOnly);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.TopNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TopNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Top News
    ApiResponse<TopNews200Response> response = apiInstance.TopNewsWithHttpInfo(sourceCountry, language, date, headlinesOnly);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.TopNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sourceCountry** | **string** | The ISO 3166 country code of the country for which top news should be retrieved. |  |
| **language** | **string** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. |  |
| **date** | **string?** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional]  |
| **headlinesOnly** | **bool?** | Whether to only return basic information such as id, title, and url of the news. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

