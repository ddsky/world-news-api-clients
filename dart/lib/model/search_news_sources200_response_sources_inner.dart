//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchNewsSources200ResponseSourcesInner {
  /// Returns a new [SearchNewsSources200ResponseSourcesInner] instance.
  SearchNewsSources200ResponseSourcesInner({
    this.name,
    this.url,
    this.language,
  });

  String? name;

  String? url;

  String? language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchNewsSources200ResponseSourcesInner &&
    other.name == name &&
    other.url == url &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (language == null ? 0 : language!.hashCode);

  @override
  String toString() => 'SearchNewsSources200ResponseSourcesInner[name=$name, url=$url, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    return json;
  }

  /// Returns a new [SearchNewsSources200ResponseSourcesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchNewsSources200ResponseSourcesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchNewsSources200ResponseSourcesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchNewsSources200ResponseSourcesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchNewsSources200ResponseSourcesInner(
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<SearchNewsSources200ResponseSourcesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchNewsSources200ResponseSourcesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchNewsSources200ResponseSourcesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchNewsSources200ResponseSourcesInner> mapFromJson(dynamic json) {
    final map = <String, SearchNewsSources200ResponseSourcesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchNewsSources200ResponseSourcesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchNewsSources200ResponseSourcesInner-objects as value to a dart map
  static Map<String, List<SearchNewsSources200ResponseSourcesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchNewsSources200ResponseSourcesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchNewsSources200ResponseSourcesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

