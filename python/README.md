# worldnewsapi

The World News API gives you access to thousands of news sources in over 50 languages from over 150 countries. News are semantically tagged allowing for semantic news search like never before.

This is the python-package for easy acccess to the api.

- API version: 1.1
- Package version: 1.0.8

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
    analyze = False # bool | Whether to analyze the news (extract entities etc.) (default to False)

    try:
        # Extract News
        api_response = api_instance.extract_news(url, analyze)
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
*NewsApi* | [**geo_coordinates**](docs/NewsApi.md#geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**news_website_to_rss_feed**](docs/NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
*NewsApi* | [**search_news**](docs/NewsApi.md#search_news) | **GET** /search-news | Search News


## Documentation For Models

 - [ExtractLinksResponse](docs/ExtractLinksResponse.md)
 - [ExtractNewsResponse](docs/ExtractNewsResponse.md)
 - [GeoCoordinatesResponse](docs/GeoCoordinatesResponse.md)
 - [News](docs/News.md)
 - [NewsArticle](docs/NewsArticle.md)
 - [SearchNewsResponse](docs/SearchNewsResponse.md)


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


