# \NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**extract_news_links**](NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links
[**geo_coordinates**](NewsApi.md#geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**news_website_to_rss_feed**](NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News



## extract_news

> crate::models::ExtractNewsResponse extract_news(url, analyze)
Extract News

Extract a news entry from a news site.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the news. | [required] |
**analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [required] |[default to false]

### Return type

[**crate::models::ExtractNewsResponse**](ExtractNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_news_links

> crate::models::ExtractLinksResponse extract_news_links(url, api_key, prefix, sub_domain)
Extract News Links

Extract a news links from a news website. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url from which links should be extracted. | [required] |
**api_key** | **String** | Your API key. | [required] |
**prefix** | Option<**String**> | The prefix the news links must start with. |  |
**sub_domain** | Option<**bool**> | Whether to include links to news on sub-domains. |  |

### Return type

[**crate::models::ExtractLinksResponse**](ExtractLinksResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## geo_coordinates

> crate::models::GeoCoordinatesResponse geo_coordinates(location)
Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**location** | **String** | The address or name of the location, e.g. Tokyo, Japan. | [required] |

### Return type

[**crate::models::GeoCoordinatesResponse**](GeoCoordinatesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## news_website_to_rss_feed

> serde_json::Value news_website_to_rss_feed(url, api_key, extract_news)
News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url from which links should be extracted. | [required] |
**api_key** | **String** | Your API key. | [required] |
**extract_news** | Option<**bool**> | Whether extract news and add information such as description, publish date, and image to each item. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_news

> crate::models::SearchNewsResponse search_news(text, source_countries, language, min_sentiment, max_sentiment, earliest_publish_date, latest_publish_date, news_sources, authors, entities, location_filter, offset, number, sort, sort_direction)
Search News

Search for news.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | Option<**String**> | The text to match in the news content. |  |
**source_countries** | Option<**String**> | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. |  |
**language** | Option<**String**> | The ISO 6391 language code of the news, e.g. \"en\" for English. |  |
**min_sentiment** | Option<**f64**> | The minimal sentiment of the news in range [-1,1]. |  |
**max_sentiment** | Option<**f64**> | The maximal sentiment of the news in range [-1,1]. |  |
**earliest_publish_date** | Option<**String**> | The news must have been published after this date. |  |
**latest_publish_date** | Option<**String**> | The news must have been published before this date. |  |
**news_sources** | Option<**String**> | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk |  |
**authors** | Option<**String**> | A comma-separated list of author names. Only news from any of the given authors will be returned. |  |
**entities** | Option<**String**> | Filter news by entities, e.g. ORG:Tesla. |  |
**location_filter** | Option<**String**> | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 |  |
**offset** | Option<**i32**> | The number of news to skip in range [0,1000] |  |
**number** | Option<**i32**> | The number of news to return in range [1,100] |  |
**sort** | Option<**String**> | The sorting criteria. |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending. |  |

### Return type

[**crate::models::SearchNewsResponse**](SearchNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

