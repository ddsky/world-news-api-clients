//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/news_api.dart';

part 'model/extract_news200_response.dart';
part 'model/extract_news200_response_images_inner.dart';
part 'model/extract_news200_response_videos_inner.dart';
part 'model/extract_news_links200_response.dart';
part 'model/get_geo_coordinates200_response.dart';
part 'model/retrieve_news_articles_by_ids200_response.dart';
part 'model/retrieve_news_articles_by_ids200_response_news_inner.dart';
part 'model/retrieve_newspaper_front_page200_response.dart';
part 'model/retrieve_newspaper_front_page200_response_front_page.dart';
part 'model/search_news200_response.dart';
part 'model/search_news200_response_news_inner.dart';
part 'model/search_news_sources200_response.dart';
part 'model/search_news_sources200_response_sources_inner.dart';
part 'model/top_news200_response.dart';
part 'model/top_news200_response_top_news_inner.dart';
part 'model/top_news200_response_top_news_inner_news_inner.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
