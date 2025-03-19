# .NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links
[**getGeoCoordinates**](NewsApi.md#getGeoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**retrieveNewsArticlesByIds**](NewsApi.md#retrieveNewsArticlesByIds) | **GET** /retrieve-news | Retrieve News Articles by Ids
[**retrieveNewspaperFrontPage**](NewsApi.md#retrieveNewspaperFrontPage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News
[**searchNewsSources**](NewsApi.md#searchNewsSources) | **GET** /search-news-sources | Search News Sources
[**topNews**](NewsApi.md#topNews) | **GET** /top-news | Top News


# **extractNews**
> ExtractNews200Response extractNews()

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiExtractNewsRequest = {
  // string | The url of the news.
  url: "https://www.bbc.com/news/world-us-canada-59340789",
  // boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)
  analyze: true,
};

apiInstance.extractNews(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the news. | defaults to undefined
 **analyze** | [**boolean**] | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | (optional) defaults to undefined


### Return type

**ExtractNews200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **extractNewsLinks**
> ExtractNewsLinks200Response extractNewsLinks()

Extract news links from a news website.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiExtractNewsLinksRequest = {
  // string | The url of the news.
  url: "https://www.bbc.com/news/world-us-canada-59340789",
  // boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)
  analyze: true,
};

apiInstance.extractNewsLinks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the news. | defaults to undefined
 **analyze** | [**boolean**] | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | (optional) defaults to undefined


### Return type

**ExtractNewsLinks200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getGeoCoordinates**
> GetGeoCoordinates200Response getGeoCoordinates()

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiGetGeoCoordinatesRequest = {
  // string | The address or name of the location.
  location: "Tokyo, Japan",
};

apiInstance.getGeoCoordinates(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**string**] | The address or name of the location. | defaults to undefined


### Return type

**GetGeoCoordinates200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **newsWebsiteToRSSFeed**
> any newsWebsiteToRSSFeed()

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiNewsWebsiteToRSSFeedRequest = {
  // string | The url of the site for which an RSS feed should be created.
  url: "https://www.bbc.com/",
  // boolean | Whether to extract the news for each link instead of just returning the link. (optional)
  extractNews: true,
};

apiInstance.newsWebsiteToRSSFeed(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the site for which an RSS feed should be created. | defaults to undefined
 **extractNews** | [**boolean**] | Whether to extract the news for each link instead of just returning the link. | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **retrieveNewsArticlesByIds**
> RetrieveNewsArticlesByIds200Response retrieveNewsArticlesByIds()

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiRetrieveNewsArticlesByIdsRequest = {
  // string | A comma separated list of news ids.
  ids: "2352,2354",
};

apiInstance.retrieveNewsArticlesByIds(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**string**] | A comma separated list of news ids. | defaults to undefined


### Return type

**RetrieveNewsArticlesByIds200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **retrieveNewspaperFrontPage**
> RetrieveNewspaperFrontPage200Response retrieveNewspaperFrontPage()

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here\'s an example of some of today\'s newspapers:

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiRetrieveNewspaperFrontPageRequest = {
  // string | The ISO 3166 country code of the newspaper publication. (optional)
  sourceCountry: "au",
  // string | The identifier of the publication see attached list. (optional)
  sourceName: "herald-sun",
  // string | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. (optional)
  date: "2024-07-09",
};

apiInstance.retrieveNewspaperFrontPage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | [**string**] | The ISO 3166 country code of the newspaper publication. | (optional) defaults to undefined
 **sourceName** | [**string**] | The identifier of the publication see attached list. | (optional) defaults to undefined
 **date** | [**string**] | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | (optional) defaults to undefined


### Return type

**RetrieveNewspaperFrontPage200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchNews**
> SearchNews200Response searchNews()

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiSearchNewsRequest = {
  // string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\". (optional)
  text: "tesla",
  // string | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. (optional)
  textMatchIndexes: "title,content",
  // string | The ISO 3166 country code from which the news should originate. (optional)
  sourceCountry: "us",
  // string | The ISO 6391 language code of the news. (optional)
  language: "en",
  // number | The minimal sentiment of the news in range [-1,1]. (optional)
  minSentiment: -0.8,
  // number | The maximal sentiment of the news in range [-1,1]. (optional)
  maxSentiment: 0.8,
  // string | The news must have been published after this date. (optional)
  earliestPublishDate: "2022-04-22 16:12:35",
  // string | The news must have been published before this date. (optional)
  latestPublishDate: "2022-04-22 16:12:35",
  // string | A comma-separated list of news sources from which the news should originate. (optional)
  newsSources: "https://www.bbc.co.uk",
  // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
  authors: "John Doe",
  // string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. (optional)
  categories: "politics,sports",
  // string | Filter news by entities (see semantic types). (optional)
  entities: "ORG:Tesla,PER:Elon Musk",
  // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional)
  locationFilter: "51.050407, 13.737262, 20",
  // string | The sorting criteria (publish-time). (optional)
  sort: "publish-time",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "ASC",
  // number | The number of news to skip in range [0,100000] (optional)
  offset: 0,
  // number | The number of news to return in range [1,100] (optional)
  number: 10,
};

apiInstance.searchNews(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | (optional) defaults to undefined
 **textMatchIndexes** | [**string**] | If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | (optional) defaults to undefined
 **sourceCountry** | [**string**] | The ISO 3166 country code from which the news should originate. | (optional) defaults to undefined
 **language** | [**string**] | The ISO 6391 language code of the news. | (optional) defaults to undefined
 **minSentiment** | [**number**] | The minimal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **maxSentiment** | [**number**] | The maximal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **earliestPublishDate** | [**string**] | The news must have been published after this date. | (optional) defaults to undefined
 **latestPublishDate** | [**string**] | The news must have been published before this date. | (optional) defaults to undefined
 **newsSources** | [**string**] | A comma-separated list of news sources from which the news should originate. | (optional) defaults to undefined
 **authors** | [**string**] | A comma-separated list of author names. Only news from any of the given authors will be returned. | (optional) defaults to undefined
 **categories** | [**string**] | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | (optional) defaults to undefined
 **entities** | [**string**] | Filter news by entities (see semantic types). | (optional) defaults to undefined
 **locationFilter** | [**string**] | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | (optional) defaults to undefined
 **sort** | [**string**] | The sorting criteria (publish-time). | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **offset** | [**number**] | The number of news to skip in range [0,100000] | (optional) defaults to undefined
 **number** | [**number**] | The number of news to return in range [1,100] | (optional) defaults to undefined


### Return type

**SearchNews200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchNewsSources**
> SearchNewsSources200Response searchNewsSources()

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiSearchNewsSourcesRequest = {
  // string | The (partial) name of the source.
  name: "bbc",
};

apiInstance.searchNewsSources(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | The (partial) name of the source. | defaults to undefined


### Return type

**SearchNewsSources200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **topNews**
> TopNews200Response topNews()

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiTopNewsRequest = {
  // string | The ISO 3166 country code of the country for which top news should be retrieved.
  sourceCountry: "us",
  // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  language: "en",
  // string | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
  date: "2024-05-30",
  // boolean | Whether to only return basic information such as id, title, and url of the news. (optional)
  headlinesOnly: false,
};

apiInstance.topNews(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | [**string**] | The ISO 3166 country code of the country for which top news should be retrieved. | defaults to undefined
 **language** | [**string**] | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | defaults to undefined
 **date** | [**string**] | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | (optional) defaults to undefined
 **headlinesOnly** | [**boolean**] | Whether to only return basic information such as id, title, and url of the news. | (optional) defaults to undefined


### Return type

**TopNews200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


