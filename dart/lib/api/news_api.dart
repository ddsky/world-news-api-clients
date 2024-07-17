//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  /// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
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
  /// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<ExtractNews200Response?> extractNews(String url, bool analyze,) async {
    final response = await extractNewsWithHttpInfo(url, analyze,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractNews200Response',) as ExtractNews200Response;
    
    }
    return null;
  }

  /// Extract News Links
  ///
  /// Extract news links from a news website.
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
  Future<Response> extractNewsLinksWithHttpInfo(String url, bool analyze,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-news-links';

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

  /// Extract News Links
  ///
  /// Extract news links from a news website.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<ExtractNewsLinks200Response?> extractNewsLinks(String url, bool analyze,) async {
    final response = await extractNewsLinksWithHttpInfo(url, analyze,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractNewsLinks200Response',) as ExtractNewsLinks200Response;
    
    }
    return null;
  }

  /// Get Geo Coordinates
  ///
  /// Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The address or name of the location.
  Future<Response> getGeoCoordinatesWithHttpInfo(String location,) async {
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
  /// Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The address or name of the location.
  Future<GetGeoCoordinates200Response?> getGeoCoordinates(String location,) async {
    final response = await getGeoCoordinatesWithHttpInfo(location,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetGeoCoordinates200Response',) as GetGeoCoordinates200Response;
    
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
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<Response> newsWebsiteToRSSFeedWithHttpInfo(String url, bool analyze,) async {
    // ignore: prefer_const_declarations
    final path = r'/feed.rss';

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

  /// News Website to RSS Feed
  ///
  /// Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<Object?> newsWebsiteToRSSFeed(String url, bool analyze,) async {
    final response = await newsWebsiteToRSSFeedWithHttpInfo(url, analyze,);
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

  /// Newspaper Front Pages
  ///
  /// Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sourceCountry:
  ///   The ISO 3166 country code of the newspaper publication.
  ///
  /// * [String] sourceName:
  ///   The identifier of the publication see attached list.
  ///
  /// * [String] date:
  ///   The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
  Future<Response> newspaperFrontPagesWithHttpInfo({ String? sourceCountry, String? sourceName, String? date, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-front-page';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourceCountry != null) {
      queryParams.addAll(_queryParams('', 'source-country', sourceCountry));
    }
    if (sourceName != null) {
      queryParams.addAll(_queryParams('', 'source-name', sourceName));
    }
    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
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

  /// Newspaper Front Pages
  ///
  /// Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
  ///
  /// Parameters:
  ///
  /// * [String] sourceCountry:
  ///   The ISO 3166 country code of the newspaper publication.
  ///
  /// * [String] sourceName:
  ///   The identifier of the publication see attached list.
  ///
  /// * [String] date:
  ///   The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
  Future<NewspaperFrontPages200Response?> newspaperFrontPages({ String? sourceCountry, String? sourceName, String? date, }) async {
    final response = await newspaperFrontPagesWithHttpInfo( sourceCountry: sourceCountry, sourceName: sourceName, date: date, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewspaperFrontPages200Response',) as NewspaperFrontPages200Response;
    
    }
    return null;
  }

  /// Retrieve News Articles by Ids
  ///
  /// Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma separated list of news ids.
  Future<Response> retrieveNewsArticlesByIdsWithHttpInfo(String ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

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

  /// Retrieve News Articles by Ids
  ///
  /// Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma separated list of news ids.
  Future<RetrieveNewsArticlesByIds200Response?> retrieveNewsArticlesByIds(String ids,) async {
    final response = await retrieveNewsArticlesByIdsWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveNewsArticlesByIds200Response',) as RetrieveNewsArticlesByIds200Response;
    
    }
    return null;
  }

  /// Search News
  ///
  /// Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news.
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
  ///   A comma-separated list of news sources from which the news should originate.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] categories:
  ///   A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  ///
  /// * [String] entities:
  ///   Filter news by entities (see semantic types).
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-time).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,10000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  Future<Response> searchNewsWithHttpInfo({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? categories, String? entities, String? locationFilter, String? sort, String? sortDirection, int? offset, int? number, }) async {
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
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (entities != null) {
      queryParams.addAll(_queryParams('', 'entities', entities));
    }
    if (locationFilter != null) {
      queryParams.addAll(_queryParams('', 'location-filter', locationFilter));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort-direction', sortDirection));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
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
  /// Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news.
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
  ///   A comma-separated list of news sources from which the news should originate.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] categories:
  ///   A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  ///
  /// * [String] entities:
  ///   Filter news by entities (see semantic types).
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-time).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,10000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  Future<SearchNews200Response?> searchNews({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? categories, String? entities, String? locationFilter, String? sort, String? sortDirection, int? offset, int? number, }) async {
    final response = await searchNewsWithHttpInfo( text: text, sourceCountries: sourceCountries, language: language, minSentiment: minSentiment, maxSentiment: maxSentiment, earliestPublishDate: earliestPublishDate, latestPublishDate: latestPublishDate, newsSources: newsSources, authors: authors, categories: categories, entities: entities, locationFilter: locationFilter, sort: sort, sortDirection: sortDirection, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchNews200Response',) as SearchNews200Response;
    
    }
    return null;
  }

  /// Top News
  ///
  /// Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sourceCountry (required):
  ///   The ISO 3166 country code of the country for which top news should be retrieved.
  ///
  /// * [String] language (required):
  ///   The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  ///
  /// * [String] date:
  ///   The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  ///
  /// * [bool] headlinesOnly:
  ///   Whether to only return basic information such as id, title, and url of the news.
  Future<Response> topNewsWithHttpInfo(String sourceCountry, String language, { String? date, bool? headlinesOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/top-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'source-country', sourceCountry));
      queryParams.addAll(_queryParams('', 'language', language));
    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (headlinesOnly != null) {
      queryParams.addAll(_queryParams('', 'headlines-only', headlinesOnly));
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

  /// Top News
  ///
  /// Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
  ///
  /// Parameters:
  ///
  /// * [String] sourceCountry (required):
  ///   The ISO 3166 country code of the country for which top news should be retrieved.
  ///
  /// * [String] language (required):
  ///   The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  ///
  /// * [String] date:
  ///   The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  ///
  /// * [bool] headlinesOnly:
  ///   Whether to only return basic information such as id, title, and url of the news.
  Future<TopNews200Response?> topNews(String sourceCountry, String language, { String? date, bool? headlinesOnly, }) async {
    final response = await topNewsWithHttpInfo(sourceCountry, language,  date: date, headlinesOnly: headlinesOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TopNews200Response',) as TopNews200Response;
    
    }
    return null;
  }
}
