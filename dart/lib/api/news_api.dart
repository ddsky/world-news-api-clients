//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NewsApi {
  NewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Extract News
  ///
  /// Extract a news entry from a news site.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<Response> extractNewsWithHttpInfo(String url, bool analyze,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
      queryParams.addAll(_queryParams('', 'analyze', analyze));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Extract News
  ///
  /// Extract a news entry from a news site.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<ExtractNewsResponse?> extractNews(String url, bool analyze,) async {
    final response = await extractNewsWithHttpInfo(url, analyze,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractNewsResponse',) as ExtractNewsResponse;
    
    }
    return null;
  }

  /// Extract News Links
  ///
  /// Extract a news links from a news website. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url from which links should be extracted.
  ///
  /// * [String] apiKey (required):
  ///   Your API key.
  ///
  /// * [String] prefix:
  ///   The prefix the news links must start with.
  ///
  /// * [bool] subDomain:
  ///   Whether to include links to news on sub-domains.
  Future<Response> extractNewsLinksWithHttpInfo(String url, String apiKey, { String? prefix, bool? subDomain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-news-links';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
    if (prefix != null) {
      queryParams.addAll(_queryParams('', 'prefix', prefix));
    }
    if (subDomain != null) {
      queryParams.addAll(_queryParams('', 'sub-domain', subDomain));
    }
      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Extract News Links
  ///
  /// Extract a news links from a news website. 
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url from which links should be extracted.
  ///
  /// * [String] apiKey (required):
  ///   Your API key.
  ///
  /// * [String] prefix:
  ///   The prefix the news links must start with.
  ///
  /// * [bool] subDomain:
  ///   Whether to include links to news on sub-domains.
  Future<ExtractLinksResponse?> extractNewsLinks(String url, String apiKey, { String? prefix, bool? subDomain, }) async {
    final response = await extractNewsLinksWithHttpInfo(url, apiKey,  prefix: prefix, subDomain: subDomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractLinksResponse',) as ExtractLinksResponse;
    
    }
    return null;
  }

  /// Get Geo Coordinates
  ///
  /// Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The address or name of the location, e.g. Tokyo, Japan.
  Future<Response> geoCoordinatesWithHttpInfo(String location,) async {
    // ignore: prefer_const_declarations
    final path = r'/geo-coordinates';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'location', location));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Geo Coordinates
  ///
  /// Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The address or name of the location, e.g. Tokyo, Japan.
  Future<GeoCoordinatesResponse?> geoCoordinates(String location,) async {
    final response = await geoCoordinatesWithHttpInfo(location,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GeoCoordinatesResponse',) as GeoCoordinatesResponse;
    
    }
    return null;
  }

  /// News Website to RSS Feed
  ///
  /// Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url from which links should be extracted.
  ///
  /// * [String] apiKey (required):
  ///   Your API key.
  ///
  /// * [bool] extractNews:
  ///   Whether extract news and add information such as description, publish date, and image to each item.
  Future<Response> newsWebsiteToRSSFeedWithHttpInfo(String url, String apiKey, { bool? extractNews, }) async {
    // ignore: prefer_const_declarations
    final path = r'/feed.rss';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
    if (extractNews != null) {
      queryParams.addAll(_queryParams('', 'extract-news', extractNews));
    }
      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// News Website to RSS Feed
  ///
  /// Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url from which links should be extracted.
  ///
  /// * [String] apiKey (required):
  ///   Your API key.
  ///
  /// * [bool] extractNews:
  ///   Whether extract news and add information such as description, publish date, and image to each item.
  Future<Object?> newsWebsiteToRSSFeed(String url, String apiKey, { bool? extractNews, }) async {
    final response = await newsWebsiteToRSSFeedWithHttpInfo(url, apiKey,  extractNews: extractNews, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Search News
  ///
  /// Search for news.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content.
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news, e.g. \"en\" for English.
  ///
  /// * [double] minSentiment:
  ///   The minimal sentiment of the news in range [-1,1].
  ///
  /// * [double] maxSentiment:
  ///   The maximal sentiment of the news in range [-1,1].
  ///
  /// * [String] earliestPublishDate:
  ///   The news must have been published after this date.
  ///
  /// * [String] latestPublishDate:
  ///   The news must have been published before this date.
  ///
  /// * [String] newsSources:
  ///   A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] entities:
  ///   Filter news by entities, e.g. ORG:Tesla.
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,1000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  ///
  /// * [String] sort:
  ///   The sorting criteria.
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending.
  Future<Response> searchNewsWithHttpInfo({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? entities, String? locationFilter, int? offset, int? number, String? sort, String? sortDirection, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (text != null) {
      queryParams.addAll(_queryParams('', 'text', text));
    }
    if (sourceCountries != null) {
      queryParams.addAll(_queryParams('', 'source-countries', sourceCountries));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (minSentiment != null) {
      queryParams.addAll(_queryParams('', 'min-sentiment', minSentiment));
    }
    if (maxSentiment != null) {
      queryParams.addAll(_queryParams('', 'max-sentiment', maxSentiment));
    }
    if (earliestPublishDate != null) {
      queryParams.addAll(_queryParams('', 'earliest-publish-date', earliestPublishDate));
    }
    if (latestPublishDate != null) {
      queryParams.addAll(_queryParams('', 'latest-publish-date', latestPublishDate));
    }
    if (newsSources != null) {
      queryParams.addAll(_queryParams('', 'news-sources', newsSources));
    }
    if (authors != null) {
      queryParams.addAll(_queryParams('', 'authors', authors));
    }
    if (entities != null) {
      queryParams.addAll(_queryParams('', 'entities', entities));
    }
    if (locationFilter != null) {
      queryParams.addAll(_queryParams('', 'location-filter', locationFilter));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort-direction', sortDirection));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search News
  ///
  /// Search for news.
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content.
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news, e.g. \"en\" for English.
  ///
  /// * [double] minSentiment:
  ///   The minimal sentiment of the news in range [-1,1].
  ///
  /// * [double] maxSentiment:
  ///   The maximal sentiment of the news in range [-1,1].
  ///
  /// * [String] earliestPublishDate:
  ///   The news must have been published after this date.
  ///
  /// * [String] latestPublishDate:
  ///   The news must have been published before this date.
  ///
  /// * [String] newsSources:
  ///   A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] entities:
  ///   Filter news by entities, e.g. ORG:Tesla.
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,1000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  ///
  /// * [String] sort:
  ///   The sorting criteria.
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending.
  Future<SearchNewsResponse?> searchNews({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? entities, String? locationFilter, int? offset, int? number, String? sort, String? sortDirection, }) async {
    final response = await searchNewsWithHttpInfo( text: text, sourceCountries: sourceCountries, language: language, minSentiment: minSentiment, maxSentiment: maxSentiment, earliestPublishDate: earliestPublishDate, latestPublishDate: latestPublishDate, newsSources: newsSources, authors: authors, entities: entities, locationFilter: locationFilter, offset: offset, number: number, sort: sort, sortDirection: sortDirection, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchNewsResponse',) as SearchNewsResponse;
    
    }
    return null;
  }
}
