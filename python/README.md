# worldnewsapi

The World News API gives you access to thousands of news sources in over 50 languages from over 150 countries. News are semantically tagged allowing for semantic news search like never before.

This is the python-package for easy acccess to the api.

- API version: 2.2.0
- Package version: 2.2.0

## Resources

- [Homepage](https://worldnewsapi.com/)
- [Tutorial](https://worldnewsapi.com/docs/#Tutorial-Getting-Started) 

## Requirements

Python 3.7+

## Installation & Usage
### pip install

This package is hosted on PyPi, you can install directly using:

```sh
pip install worldnewsapi
```
(you may need to run `pip` with root permission: `sudo pip install worldnewsapi`)

Then import the package:
```python
import worldnewsapi
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import worldnewsapi
```

### Tests

Execute `pytest` to run the tests.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import worldnewsapi
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'


# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    url = 'https://www.bbc.com/news/world-us-canada-59340789' # str | The url of the news.
    analyze = true # bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)

    try:
        # Extract News
        api_response = api_instance.extract_news(url, analyze=analyze)
        print("The response of NewsApi->extract_news:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling NewsApi->extract_news: %s\n" % e)

```

## Documentation for API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NewsApi* | [**extract_news**](docs/NewsApi.md#extract_news) | **GET** /extract-news | Extract News
*NewsApi* | [**extract_news_links**](docs/NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links
*NewsApi* | [**get_geo_coordinates**](docs/NewsApi.md#get_geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**news_website_to_rss_feed**](docs/NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
*NewsApi* | [**retrieve_news_articles_by_ids**](docs/NewsApi.md#retrieve_news_articles_by_ids) | **GET** /retrieve-news | Retrieve News Articles by Ids
*NewsApi* | [**retrieve_newspaper_front_page**](docs/NewsApi.md#retrieve_newspaper_front_page) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
*NewsApi* | [**search_news**](docs/NewsApi.md#search_news) | **GET** /search-news | Search News
*NewsApi* | [**search_news_sources**](docs/NewsApi.md#search_news_sources) | **GET** /search-news-sources | Search News Sources
*NewsApi* | [**top_news**](docs/NewsApi.md#top_news) | **GET** /top-news | Top News


## Documentation For Models

 - [ExtractNews200Response](docs/ExtractNews200Response.md)
 - [ExtractNews200ResponseImagesInner](docs/ExtractNews200ResponseImagesInner.md)
 - [ExtractNews200ResponseVideosInner](docs/ExtractNews200ResponseVideosInner.md)
 - [ExtractNewsLinks200Response](docs/ExtractNewsLinks200Response.md)
 - [GetGeoCoordinates200Response](docs/GetGeoCoordinates200Response.md)
 - [RetrieveNewsArticlesByIds200Response](docs/RetrieveNewsArticlesByIds200Response.md)
 - [RetrieveNewsArticlesByIds200ResponseNewsInner](docs/RetrieveNewsArticlesByIds200ResponseNewsInner.md)
 - [RetrieveNewspaperFrontPage200Response](docs/RetrieveNewspaperFrontPage200Response.md)
 - [RetrieveNewspaperFrontPage200ResponseFrontPage](docs/RetrieveNewspaperFrontPage200ResponseFrontPage.md)
 - [SearchNews200Response](docs/SearchNews200Response.md)
 - [SearchNews200ResponseNewsInner](docs/SearchNews200ResponseNewsInner.md)
 - [SearchNewsSources200Response](docs/SearchNewsSources200Response.md)
 - [SearchNewsSources200ResponseSourcesInner](docs/SearchNewsSources200ResponseSourcesInner.md)
 - [TopNews200Response](docs/TopNews200Response.md)
 - [TopNews200ResponseTopNewsInner](docs/TopNews200ResponseTopNewsInner.md)
 - [TopNews200ResponseTopNewsInnerNewsInner](docs/TopNews200ResponseTopNewsInnerNewsInner.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

<a id="headerApiKey"></a>
### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author

mail@worldnewsapi.com


