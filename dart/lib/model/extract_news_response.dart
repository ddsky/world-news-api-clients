//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractNewsResponse {
  /// Returns a new [ExtractNewsResponse] instance.
  ExtractNewsResponse({
    this.title,
    this.text,
    this.url,
    this.image,
    this.author,
    this.language,
    this.sourceCountry,
    this.sentiment,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sentiment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractNewsResponse &&
    other.title == title &&
    other.text == text &&
    other.url == url &&
    other.image == image &&
    other.author == author &&
    other.language == language &&
    other.sourceCountry == sourceCountry &&
    other.sentiment == sentiment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry!.hashCode) +
    (sentiment == null ? 0 : sentiment!.hashCode);

  @override
  String toString() => 'ExtractNewsResponse[title=$title, text=$text, url=$url, image=$image, author=$author, language=$language, sourceCountry=$sourceCountry, sentiment=$sentiment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.sourceCountry != null) {
      json[r'source_country'] = this.sourceCountry;
    } else {
      json[r'source_country'] = null;
    }
    if (this.sentiment != null) {
      json[r'sentiment'] = this.sentiment;
    } else {
      json[r'sentiment'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractNewsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractNewsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractNewsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractNewsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractNewsResponse(
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        author: mapValueOfType<String>(json, r'author'),
        language: mapValueOfType<String>(json, r'language'),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        sentiment: num.parse('${json[r'sentiment']}'),
      );
    }
    return null;
  }

  static List<ExtractNewsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractNewsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractNewsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractNewsResponse> mapFromJson(dynamic json) {
    final map = <String, ExtractNewsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractNewsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractNewsResponse-objects as value to a dart map
  static Map<String, List<ExtractNewsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractNewsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractNewsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

