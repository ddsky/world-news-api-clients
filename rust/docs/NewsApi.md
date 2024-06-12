# \NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**extract_news_links**](NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links
[**get_geo_coordinates**](NewsApi.md#get_geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**news_website_to_rss_feed**](NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
[**retrieve_news_articles_by_ids**](NewsApi.md#retrieve_news_articles_by_ids) | **GET** /retrieve-news | Retrieve News Articles by Ids
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News
[**top_news**](NewsApi.md#top_news) | **GET** /top-news | Top News



## extract_news

> models::ExtractNews200Response extract_news(url, analyze)
Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the news. | [required] |
**analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [required] |

### Return type

[**models::ExtractNews200Response**](extractNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_news_links

> models::ExtractNewsLinks200Response extract_news_links(url, analyze)
Extract News Links

Extract news links from a news website.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the news. | [required] |
**analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [required] |

### Return type

[**models::ExtractNewsLinks200Response**](extractNewsLinks_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_geo_coordinates

> models::GetGeoCoordinates200Response get_geo_coordinates(location)
Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**location** | **String** | The address or name of the location. | [required] |

### Return type

[**models::GetGeoCoordinates200Response**](getGeoCoordinates_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## news_website_to_rss_feed

> serde_json::Value news_website_to_rss_feed(url, analyze)
News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the news. | [required] |
**analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_news_articles_by_ids

> models::RetrieveNewsArticlesByIds200Response retrieve_news_articles_by_ids(ids)
Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ids** | **String** | A comma separated list of news ids. | [required] |

### Return type

[**models::RetrieveNewsArticlesByIds200Response**](retrieveNewsArticlesByIds_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_news

> models::SearchNews200Response search_news(text, source_countries, language, min_sentiment, max_sentiment, earliest_publish_date, latest_publish_date, news_sources, authors, entities, location_filter, sort, sort_direction, offset, number)
Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | Option<**String**> | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford |  |
**source_countries** | Option<**String**> | A comma-separated list of ISO 3166 country codes from which the news should originate. |  |
**language** | Option<**String**> | The ISO 6391 language code of the news. |  |
**min_sentiment** | Option<**f64**> | The minimal sentiment of the news in range [-1,1]. |  |
**max_sentiment** | Option<**f64**> | The maximal sentiment of the news in range [-1,1]. |  |
**earliest_publish_date** | Option<**String**> | The news must have been published after this date. |  |
**latest_publish_date** | Option<**String**> | The news must have been published before this date. |  |
**news_sources** | Option<**String**> | A comma-separated list of news sources from which the news should originate. |  |
**authors** | Option<**String**> | A comma-separated list of author names. Only news from any of the given authors will be returned. |  |
**entities** | Option<**String**> | Filter news by entities (see semantic types). |  |
**location_filter** | Option<**String**> | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. |  |
**sort** | Option<**String**> | The sorting criteria (publish-time or sentiment). |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending (ASC or DESC). |  |
**offset** | Option<**i32**> | The number of news to skip in range [0,10000] |  |
**number** | Option<**i32**> | The number of news to return in range [1,100] |  |

### Return type

[**models::SearchNews200Response**](searchNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## top_news

> models::TopNews200Response top_news(source_country, language, date, headlines_only)
Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**source_country** | **String** | The ISO 3166 country code of the country for which top news should be retrieved. | [required] |
**language** | **String** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | [required] |
**date** | Option<**String**> | The date for which the top news should be retrieved. If no date is given, the current day is assumed. |  |
**headlines_only** | Option<**bool**> | Whether to only return basic information such as id, title, and url of the news. |  |

### Return type

[**models::TopNews200Response**](topNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

