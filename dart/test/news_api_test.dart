//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
    // Extract a news entry from a news site.
    //
    //Future<ExtractNewsResponse> extractNews(String url, bool analyze) async
    test('test extractNews', () async {
      // TODO
    });

    // Extract News Links
    //
    // Extract a news links from a news website. 
    //
    //Future<ExtractLinksResponse> extractNewsLinks(String url, String apiKey, { String prefix, bool subDomain }) async
    test('test extractNewsLinks', () async {
      // TODO
    });

    // Get Geo Coordinates
    //
    // Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
    //
    //Future<GeoCoordinatesResponse> geoCoordinates(String location) async
    test('test geoCoordinates', () async {
      // TODO
    });

    // News Website to RSS Feed
    //
    // Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
    //
    //Future<Object> newsWebsiteToRSSFeed(String url, String apiKey, { bool extractNews }) async
    test('test newsWebsiteToRSSFeed', () async {
      // TODO
    });

    // Search News
    //
    // Search for news.
    //
    //Future<SearchNewsResponse> searchNews({ String text, String sourceCountries, String language, double minSentiment, double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, int offset, int number, String sort, String sortDirection }) async
    test('test searchNews', () async {
      // TODO
    });

  });
}
