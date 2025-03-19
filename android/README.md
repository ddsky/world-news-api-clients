# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.worldnewsapi</groupId>
    <artifactId>android-client</artifactId>
    <version>2.2.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.worldnewsapi:android-client:2.2.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-2.2.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.worldnewsapi.NewsApi;

public class NewsApiExample {

    public static void main(String[] args) {
        NewsApi apiInstance = new NewsApi();
        String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
        Boolean analyze = true; // Boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.)
        try {
            ExtractNews200Response result = apiInstance.extractNews(url, analyze);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NewsApi#extractNews");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NewsApi* | [**extractNews**](docs/NewsApi.md#extractNews) | **GET** /extract-news | Extract News
*NewsApi* | [**extractNewsLinks**](docs/NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links
*NewsApi* | [**getGeoCoordinates**](docs/NewsApi.md#getGeoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**newsWebsiteToRSSFeed**](docs/NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
*NewsApi* | [**retrieveNewsArticlesByIds**](docs/NewsApi.md#retrieveNewsArticlesByIds) | **GET** /retrieve-news | Retrieve News Articles by Ids
*NewsApi* | [**retrieveNewspaperFrontPage**](docs/NewsApi.md#retrieveNewspaperFrontPage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchNews) | **GET** /search-news | Search News
*NewsApi* | [**searchNewsSources**](docs/NewsApi.md#searchNewsSources) | **GET** /search-news-sources | Search News Sources
*NewsApi* | [**topNews**](docs/NewsApi.md#topNews) | **GET** /top-news | Top News


## Documentation for Models

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


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@worldnewsapi.com

