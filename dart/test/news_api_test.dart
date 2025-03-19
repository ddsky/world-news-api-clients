//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for NewsApi
void main() {
  // final instance = NewsApi();

  group('tests for NewsApi', () {
    // Extract News
    //
    // Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
    //
    //Future<ExtractNews200Response> extractNews(String url, { bool analyze }) async
    test('test extractNews', () async {
      // TODO
    });

    // Extract News Links
    //
    // Extract news links from a news website.
    //
    //Future<ExtractNewsLinks200Response> extractNewsLinks(String url, { bool analyze }) async
    test('test extractNewsLinks', () async {
      // TODO
    });

    // Get Geo Coordinates
    //
    // Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
    //
    //Future<GetGeoCoordinates200Response> getGeoCoordinates(String location) async
    test('test getGeoCoordinates', () async {
      // TODO
    });

    // News Website to RSS Feed
    //
    // Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
    //
    //Future<Object> newsWebsiteToRSSFeed(String url, { bool extractNews }) async
    test('test newsWebsiteToRSSFeed', () async {
      // TODO
    });

    // Retrieve News Articles by Ids
    //
    // Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
    //
    //Future<RetrieveNewsArticlesByIds200Response> retrieveNewsArticlesByIds(String ids) async
    test('test retrieveNewsArticlesByIds', () async {
      // TODO
    });

    // Retrieve Newspaper Front Page
    //
    // Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
    //
    //Future<RetrieveNewspaperFrontPage200Response> retrieveNewspaperFrontPage({ String sourceCountry, String sourceName, String date }) async
    test('test retrieveNewspaperFrontPage', () async {
      // TODO
    });

    // Search News
    //
    // Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
    //
    //Future<SearchNews200Response> searchNews({ String text, String textMatchIndexes, String sourceCountry, String language, double minSentiment, double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String categories, String entities, String locationFilter, String sort, String sortDirection, int offset, int number }) async
    test('test searchNews', () async {
      // TODO
    });

    // Search News Sources
    //
    // Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
    //
    //Future<SearchNewsSources200Response> searchNewsSources(String name) async
    test('test searchNewsSources', () async {
      // TODO
    });

    // Top News
    //
    // Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
    //
    //Future<TopNews200Response> topNews(String sourceCountry, String language, { String date, bool headlinesOnly }) async
    test('test topNews', () async {
      // TODO
    });

  });
}
