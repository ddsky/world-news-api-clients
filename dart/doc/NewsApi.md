# openapi.api.NewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](NewsApi.md#extractnewslinks) | **GET** /extract-news-links | Extract News Links
[**geoCoordinates**](NewsApi.md#geocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News


# **extractNews**
> InlineResponse2001 extractNews(url, analyze)

Extract News

Extract a news entry from a news site.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = NewsApi();
final url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
final analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    final result = api_instance.extractNews(url, analyze);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->extractNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractNewsLinks**
> InlineResponse2002 extractNewsLinks(url, apiKey, prefix, subDomain)

Extract News Links

Extract a news links from a news website. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = NewsApi();
final url = https://nytimes.com; // String | The url from which links should be extracted.
final apiKey = abcd1234; // String | Your API key.
final prefix = ; // String | The prefix the news links must start with.
final subDomain = true; // bool | Whether to include links to news on sub-domains.

try {
    final result = api_instance.extractNewsLinks(url, apiKey, prefix, subDomain);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->extractNewsLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. | 
 **apiKey** | **String**| Your API key. | 
 **prefix** | **String**| The prefix the news links must start with. | [optional] 
 **subDomain** | **bool**| Whether to include links to news on sub-domains. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoCoordinates**
> InlineResponse2003 geoCoordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = NewsApi();
final location = Tokyo, Japan; // String | The address or name of the location, e.g. Tokyo, Japan.

try {
    final result = api_instance.geoCoordinates(location);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->geoCoordinates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsWebsiteToRSSFeed**
> Object newsWebsiteToRSSFeed(url, apiKey, extractNews)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = NewsApi();
final url = https://nytimes.com; // String | The url from which links should be extracted.
final apiKey = abcd1234; // String | Your API key.
final extractNews = false; // bool | Whether extract news and add information such as description, publish date, and image to each item.

try {
    final result = api_instance.newsWebsiteToRSSFeed(url, apiKey, extractNews);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->newsWebsiteToRSSFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. | 
 **apiKey** | **String**| Your API key. | 
 **extractNews** | **bool**| Whether extract news and add information such as description, publish date, and image to each item. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNews**
> InlineResponse200 searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection)

Search News

Search for news.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = NewsApi();
final text = hurricane; // String | The text to match in the news content.
final sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
final language = en; // String | The ISO 6391 language code of the news, e.g. \"en\" for English.
final minSentiment = -0.8; // double | The minimal sentiment of the news in range [-1,1].
final maxSentiment = 0.8; // double | The maximal sentiment of the news in range [-1,1].
final earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
final latestPublishDate = 2022-05-23 24:16:27; // String | The news must have been published before this date.
final newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
final authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
final entities = ORG:Tesla; // String | Filter news by entities, e.g. ORG:Tesla.
final locationFilter = 51.050407,13.737262,100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
final offset = 10; // int | The number of news to skip in range [0,1000]
final number = 1; // int | The number of news to return in range [1,100]
final sort = publish-time; // String | The sorting criteria.
final sortDirection = desc; // String | Whether to sort ascending or descending.

try {
    final result = api_instance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->searchNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content. | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news, e.g. \"en\" for English. | [optional] 
 **minSentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **String**| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **int**| The number of news to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 
 **sort** | **String**| The sorting criteria. | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

