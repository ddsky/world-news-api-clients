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
[**getGeoCoordinates**](NewsApi.md#getgeocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed
[**retrieveNewsArticlesByIds**](NewsApi.md#retrievenewsarticlesbyids) | **GET** /retrieve-news | Retrieve News Articles by Ids
[**retrieveNewspaperFrontPage**](NewsApi.md#retrievenewspaperfrontpage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
[**searchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News
[**searchNewsSources**](NewsApi.md#searchnewssources) | **GET** /search-news-sources | Search News Sources
[**topNews**](NewsApi.md#topnews) | **GET** /top-news | Top News


# **extractNews**
> ExtractNews200Response extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

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
final analyze = true; // bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.)

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
 **analyze** | **bool**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractNewsLinks**
> ExtractNewsLinks200Response extractNewsLinks(url, analyze)

Extract News Links

Extract news links from a news website.

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
final analyze = true; // bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.)

try {
    final result = api_instance.extractNewsLinks(url, analyze);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->extractNewsLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoCoordinates**
> GetGeoCoordinates200Response getGeoCoordinates(location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

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
final location = Tokyo, Japan; // String | The address or name of the location.

try {
    final result = api_instance.getGeoCoordinates(location);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->getGeoCoordinates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location. | 

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsWebsiteToRSSFeed**
> Object newsWebsiteToRSSFeed(url, extractNews)

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
final url = https://www.bbc.com/; // String | The url of the site for which an RSS feed should be created.
final extractNews = true; // bool | Whether to extract the news for each link instead of just returning the link.

try {
    final result = api_instance.newsWebsiteToRSSFeed(url, extractNews);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->newsWebsiteToRSSFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the site for which an RSS feed should be created. | 
 **extractNews** | **bool**| Whether to extract the news for each link instead of just returning the link. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveNewsArticlesByIds**
> RetrieveNewsArticlesByIds200Response retrieveNewsArticlesByIds(ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

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
final ids = 2352,2354; // String | A comma separated list of news ids.

try {
    final result = api_instance.retrieveNewsArticlesByIds(ids);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->retrieveNewsArticlesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma separated list of news ids. | 

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveNewspaperFrontPage**
> RetrieveNewspaperFrontPage200Response retrieveNewspaperFrontPage(sourceCountry, sourceName, date)

Retrieve Newspaper Front Page

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:

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
final sourceCountry = au; // String | The ISO 3166 country code of the newspaper publication.
final sourceName = herald-sun; // String | The identifier of the publication see attached list.
final date = 2024-07-09; // String | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.

try {
    final result = api_instance.retrieveNewspaperFrontPage(sourceCountry, sourceName, date);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->retrieveNewspaperFrontPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the newspaper publication. | [optional] 
 **sourceName** | **String**| The identifier of the publication see attached list. | [optional] 
 **date** | **String**| The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional] 

### Return type

[**RetrieveNewspaperFrontPage200Response**](RetrieveNewspaperFrontPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNews**
> SearchNews200Response searchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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
final text = tesla; // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\".
final textMatchIndexes = title,content; // String | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
final sourceCountry = us; // String | The ISO 3166 country code from which the news should originate.
final language = en; // String | The ISO 6391 language code of the news.
final minSentiment = -0.8; // double | The minimal sentiment of the news in range [-1,1].
final maxSentiment = 0.8; // double | The maximal sentiment of the news in range [-1,1].
final earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
final latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
final newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
final authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
final categories = politics,sports; // String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
final entities = ORG:Tesla,PER:Elon Musk; // String | Filter news by entities (see semantic types).
final locationFilter = 51.050407, 13.737262, 20; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
final sort = publish-time; // String | The sorting criteria (publish-time).
final sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
final offset = 0; // int | The number of news to skip in range [0,100000]
final number = 10; // int | The number of news to return in range [1,100]

try {
    final result = api_instance.searchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->searchNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\". | [optional] 
 **textMatchIndexes** | **String**| If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | [optional] 
 **sourceCountry** | **String**| The ISO 3166 country code from which the news should originate. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **String**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | [optional] 
 **entities** | **String**| Filter news by entities (see semantic types). | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. | [optional] 
 **sort** | **String**| The sorting criteria (publish-time). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,100000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNewsSources**
> SearchNewsSources200Response searchNewsSources(name)

Search News Sources

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

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
final name = bbc; // String | The (partial) name of the source.

try {
    final result = api_instance.searchNewsSources(name);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->searchNewsSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The (partial) name of the source. | 

### Return type

[**SearchNewsSources200Response**](SearchNewsSources200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topNews**
> TopNews200Response topNews(sourceCountry, language, date, headlinesOnly)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

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
final sourceCountry = us; // String | The ISO 3166 country code of the country for which top news should be retrieved.
final language = en; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
final date = 2024-05-30; // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
final headlinesOnly = false; // bool | Whether to only return basic information such as id, title, and url of the news.

try {
    final result = api_instance.topNews(sourceCountry, language, date, headlinesOnly);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->topNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlinesOnly** | **bool**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

