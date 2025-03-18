//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchNews200ResponseNewsInner {
  /// Returns a new [SearchNews200ResponseNewsInner] instance.
  SearchNews200ResponseNewsInner({
    this.summary,
    this.image,
    this.sentiment,
    this.language,
    this.video,
    this.title,
    this.url,
    this.sourceCountry,
    this.id,
    this.text,
    this.category,
    this.publishDate,
    this.authors = const [],
  });

  String? summary;

  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sentiment;

  String? language;

  String? video;

  String? title;

  String? url;

  String? sourceCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? text;

  String? category;

  String? publishDate;

  List<String> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchNews200ResponseNewsInner &&
    other.summary == summary &&
    other.image == image &&
    other.sentiment == sentiment &&
    other.language == language &&
    other.video == video &&
    other.title == title &&
    other.url == url &&
    other.sourceCountry == sourceCountry &&
    other.id == id &&
    other.text == text &&
    other.category == category &&
    other.publishDate == publishDate &&
    _deepEquality.equals(other.authors, authors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (summary == null ? 0 : summary!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (sentiment == null ? 0 : sentiment!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (video == null ? 0 : video!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (authors.hashCode);

  @override
  String toString() => 'SearchNews200ResponseNewsInner[summary=$summary, image=$image, sentiment=$sentiment, language=$language, video=$video, title=$title, url=$url, sourceCountry=$sourceCountry, id=$id, text=$text, category=$category, publishDate=$publishDate, authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.sentiment != null) {
      json[r'sentiment'] = this.sentiment;
    } else {
      json[r'sentiment'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.video != null) {
      json[r'video'] = this.video;
    } else {
      json[r'video'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.sourceCountry != null) {
      json[r'source_country'] = this.sourceCountry;
    } else {
      json[r'source_country'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
      json[r'authors'] = this.authors;
    return json;
  }

  /// Returns a new [SearchNews200ResponseNewsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchNews200ResponseNewsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchNews200ResponseNewsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchNews200ResponseNewsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchNews200ResponseNewsInner(
        summary: mapValueOfType<String>(json, r'summary'),
        image: mapValueOfType<String>(json, r'image'),
        sentiment: num.parse('${json[r'sentiment']}'),
        language: mapValueOfType<String>(json, r'language'),
        video: mapValueOfType<String>(json, r'video'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        id: mapValueOfType<int>(json, r'id'),
        text: mapValueOfType<String>(json, r'text'),
        category: mapValueOfType<String>(json, r'category'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        authors: json[r'authors'] is Iterable
            ? (json[r'authors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SearchNews200ResponseNewsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchNews200ResponseNewsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchNews200ResponseNewsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchNews200ResponseNewsInner> mapFromJson(dynamic json) {
    final map = <String, SearchNews200ResponseNewsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchNews200ResponseNewsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchNews200ResponseNewsInner-objects as value to a dart map
  static Map<String, List<SearchNews200ResponseNewsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchNews200ResponseNewsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchNews200ResponseNewsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

