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
    <version>1.0.10</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.worldnewsapi:android-client:1.0.10"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.10.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.worldnewsapi.NewsApi;

public class NewsApiExample {

    public static void main(String[] args) {
        NewsApi apiInstance = new NewsApi();
        String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
        Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
        try {
            ExtractNewsResponse result = apiInstance.extractNews(url, analyze);
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
*NewsApi* | [**geoCoordinates**](docs/NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**newsWebsiteToRSSFeed**](docs/NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchNews) | **GET** /search-news | Search News


## Documentation for Models

 - [ExtractLinksResponse](docs/ExtractLinksResponse.md)
 - [ExtractNewsResponse](docs/ExtractNewsResponse.md)
 - [GeoCoordinatesResponse](docs/GeoCoordinatesResponse.md)
 - [News](docs/News.md)
 - [NewsArticle](docs/NewsArticle.md)
 - [SearchNewsResponse](docs/SearchNewsResponse.md)


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

