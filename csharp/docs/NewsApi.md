# com.worldnewsapi.NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**ExtractNews_0**](NewsApi.md#extractnews_0) | **GET** /extract-news-links | Extract News
[**GeoCoordinates**](NewsApi.md#geocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**NewsWebsiteToRSSFeed**](NewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed
[**SearchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News


<a name="extractnews"></a>
# **ExtractNews**
> InlineResponse2001 ExtractNews (string url, bool? analyze)

Extract News

Extract a news entry from a news site.

### Example
```csharp
using System;
using System.Diagnostics;
using com.worldnewsapi;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace Example
{
    public class ExtractNewsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var url = https://www.bbc.com/news/world-us-canada-59340789;  // string | The url of the news.
            var analyze = true;  // bool? | Whether to analyze the news (extract entities etc.) (default to false)

            try
            {
                // Extract News
                InlineResponse2001 result = apiInstance.ExtractNews(url, analyze);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNews: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. | 
 **analyze** | **bool?**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="extractnews_0"></a>
# **ExtractNews_0**
> Object ExtractNews_0 (string url, string apiKey, string prefix, bool? subDomain)

Extract News

Extract a news links from a news website. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.worldnewsapi;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace Example
{
    public class ExtractNews_0Example
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var url = https://nytimes.com;  // string | The url from which links should be extracted.
            var apiKey = abcd1234;  // string | Your API key.
            var prefix = ;  // string | The prefix the news links must start with. (optional) 
            var subDomain = true;  // bool? | Whether to include links to news on sub-domains. (optional) 

            try
            {
                // Extract News
                Object result = apiInstance.ExtractNews_0(url, apiKey, prefix, subDomain);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNews_0: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url from which links should be extracted. | 
 **apiKey** | **string**| Your API key. | 
 **prefix** | **string**| The prefix the news links must start with. | [optional] 
 **subDomain** | **bool?**| Whether to include links to news on sub-domains. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: , application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="geocoordinates"></a>
# **GeoCoordinates**
> InlineResponse2002 GeoCoordinates (string location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```csharp
using System;
using System.Diagnostics;
using com.worldnewsapi;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace Example
{
    public class GeoCoordinatesExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var location = Tokyo, Japan;  // string | The address or name of the location, e.g. Tokyo, Japan.

            try
            {
                // Get Geo Coordinates
                InlineResponse2002 result = apiInstance.GeoCoordinates(location);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.GeoCoordinates: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="newswebsitetorssfeed"></a>
# **NewsWebsiteToRSSFeed**
> Object NewsWebsiteToRSSFeed (string url, string apiKey, bool? extractNews)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.worldnewsapi;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace Example
{
    public class NewsWebsiteToRSSFeedExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var url = https://nytimes.com;  // string | The url from which links should be extracted.
            var apiKey = abcd1234;  // string | Your API key.
            var extractNews = false;  // bool? | Whether extract news and add information such as description, publish date, and image to each item. (optional) 

            try
            {
                // News Website to RSS Feed
                Object result = apiInstance.NewsWebsiteToRSSFeed(url, apiKey, extractNews);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.NewsWebsiteToRSSFeed: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url from which links should be extracted. | 
 **apiKey** | **string**| Your API key. | 
 **extractNews** | **bool?**| Whether extract news and add information such as description, publish date, and image to each item. | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: , application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchnews"></a>
# **SearchNews**
> InlineResponse200 SearchNews (string text, string sourceCountries, string language, double? minSentiment, double? maxSentiment, string earliestPublishDate, string latestPublishDate, string newsSources, string authors, string entities, string locationFilter, int? offset, int? number, string sort, string sortDirection)

Search News

Search for news.

### Example
```csharp
using System;
using System.Diagnostics;
using com.worldnewsapi;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace Example
{
    public class SearchNewsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var text = hurricane;  // string | The text to match in the news content. (optional) 
            var sourceCountries = us,uk;  // string | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional) 
            var language = en;  // string | The ISO 6391 language code of the news, e.g. \"en\" for English. (optional) 
            var minSentiment = -0.8;  // double? | The minimal sentiment of the news in range [-1,1]. (optional) 
            var maxSentiment = 0.8;  // double? | The maximal sentiment of the news in range [-1,1]. (optional) 
            var earliestPublishDate = 2022-04-22 16:12:35;  // string | The news must have been published after this date. (optional) 
            var latestPublishDate = 2022-05-23 24:16:27;  // string | The news must have been published before this date. (optional) 
            var newsSources = https://www.bbc.co.uk;  // string | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional) 
            var authors = John Doe;  // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional) 
            var entities = ORG:Tesla;  // string | Filter news by entities, e.g. ORG:Tesla. (optional) 
            var locationFilter = 51.050407,13.737262,100;  // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional) 
            var offset = 10;  // int? | The number of news to skip in range [0,1000] (optional) 
            var number = 1;  // int? | The number of news to return in range [1,100] (optional) 
            var sort = publish-time;  // string | The sorting criteria. (optional) 
            var sortDirection = desc;  // string | Whether to sort ascending or descending. (optional) 

            try
            {
                // Search News
                InlineResponse200 result = apiInstance.SearchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.SearchNews: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to match in the news content. | [optional] 
 **sourceCountries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **string**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] 
 **minSentiment** | **double?**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double?**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **string**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **string**| The news must have been published before this date. | [optional] 
 **newsSources** | **string**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **string**| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **locationFilter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **int?**| The number of news to skip in range [0,1000] | [optional] 
 **number** | **int?**| The number of news to return in range [1,100] | [optional] 
 **sort** | **string**| The sorting criteria. | [optional] 
 **sortDirection** | **string**| Whether to sort ascending or descending. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

