# .NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links
[**geoCoordinates**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News


# **extractNews**
> ExtractNewsResponse extractNews()

Extract a news entry from a news site.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiExtractNewsRequest = {
  // string | The url of the news.
  url: "https://www.bbc.com/news/world-us-canada-59340789",
  // boolean | Whether to analyze the news (extract entities etc.)
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
 **analyze** | [**boolean**] | Whether to analyze the news (extract entities etc.) | defaults to false


### Return type

**ExtractNewsResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Extracted news. |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **extractNewsLinks**
> ExtractLinksResponse extractNewsLinks()

Extract a news links from a news website. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiExtractNewsLinksRequest = {
  // string | The url from which links should be extracted.
  url: "https://nytimes.com",
  // string | Your API key.
  apiKey: "abcd1234",
  // string | The prefix the news links must start with. (optional)
  prefix: "",
  // boolean | Whether to include links to news on sub-domains. (optional)
  subDomain: true,
};

apiInstance.extractNewsLinks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url from which links should be extracted. | defaults to undefined
 **apiKey** | [**string**] | Your API key. | defaults to undefined
 **prefix** | [**string**] | The prefix the news links must start with. | (optional) defaults to undefined
 **subDomain** | [**boolean**] | Whether to include links to news on sub-domains. | (optional) defaults to undefined


### Return type

**ExtractLinksResponse**

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
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **geoCoordinates**
> GeoCoordinatesResponse geoCoordinates()

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiGeoCoordinatesRequest = {
  // string | The address or name of the location, e.g. Tokyo, Japan.
  location: "Tokyo, Japan",
};

apiInstance.geoCoordinates(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**string**] | The address or name of the location, e.g. Tokyo, Japan. | defaults to undefined


### Return type

**GeoCoordinatesResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The coordinates of the location. |  -  |
**404** | Not Found |  -  |

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
  // string | The url from which links should be extracted.
  url: "https://nytimes.com",
  // string | Your API key.
  apiKey: "abcd1234",
  // boolean | Whether extract news and add information such as description, publish date, and image to each item. (optional)
  extractNews: false,
};

apiInstance.newsWebsiteToRSSFeed(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url from which links should be extracted. | defaults to undefined
 **apiKey** | [**string**] | Your API key. | defaults to undefined
 **extractNews** | [**boolean**] | Whether extract news and add information such as description, publish date, and image to each item. | (optional) defaults to undefined


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
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchNews**
> SearchNewsResponse searchNews()

Search for news.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiSearchNewsRequest = {
  // string | The text to match in the news content. (optional)
  text: "hurricane",
  // string | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
  sourceCountries: "us,uk",
  // string | The ISO 6391 language code of the news, e.g. \"en\" for English. (optional)
  language: "en",
  // number | The minimal sentiment of the news in range [-1,1]. (optional)
  minSentiment: -0.8,
  // number | The maximal sentiment of the news in range [-1,1]. (optional)
  maxSentiment: 0.8,
  // string | The news must have been published after this date. (optional)
  earliestPublishDate: "2022-04-22 16:12:35",
  // string | The news must have been published before this date. (optional)
  latestPublishDate: "2022-05-23 24:16:27",
  // string | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
  newsSources: "https://www.bbc.co.uk",
  // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
  authors: "John Doe",
  // string | Filter news by entities, e.g. ORG:Tesla. (optional)
  entities: "ORG:Tesla",
  // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional)
  locationFilter: "51.050407,13.737262,100",
  // number | The number of news to skip in range [0,1000] (optional)
  offset: 10,
  // number | The number of news to return in range [1,100] (optional)
  number: 1,
  // 'relevance' | 'publish-time' | 'sentiment' | The sorting criteria. (optional)
  sort: "publish-time",
  // 'asc' | 'desc' | Whether to sort ascending or descending. (optional)
  sortDirection: "desc",
};

apiInstance.searchNews(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to match in the news content. | (optional) defaults to undefined
 **sourceCountries** | [**string**] | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | (optional) defaults to undefined
 **language** | [**string**] | The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | (optional) defaults to undefined
 **minSentiment** | [**number**] | The minimal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **maxSentiment** | [**number**] | The maximal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **earliestPublishDate** | [**string**] | The news must have been published after this date. | (optional) defaults to undefined
 **latestPublishDate** | [**string**] | The news must have been published before this date. | (optional) defaults to undefined
 **newsSources** | [**string**] | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | (optional) defaults to undefined
 **authors** | [**string**] | A comma-separated list of author names. Only news from any of the given authors will be returned. | (optional) defaults to undefined
 **entities** | [**string**] | Filter news by entities, e.g. ORG:Tesla. | (optional) defaults to undefined
 **locationFilter** | [**string**] | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | (optional) defaults to undefined
 **offset** | [**number**] | The number of news to skip in range [0,1000] | (optional) defaults to undefined
 **number** | [**number**] | The number of news to return in range [1,100] | (optional) defaults to undefined
 **sort** | [**&#39;relevance&#39; | &#39;publish-time&#39; | &#39;sentiment&#39;**]**Array<&#39;relevance&#39; &#124; &#39;publish-time&#39; &#124; &#39;sentiment&#39;>** | The sorting criteria. | (optional) defaults to undefined
 **sortDirection** | [**&#39;asc&#39; | &#39;desc&#39;**]**Array<&#39;asc&#39; &#124; &#39;desc&#39;>** | Whether to sort ascending or descending. | (optional) defaults to undefined


### Return type

**SearchNewsResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of news. |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


