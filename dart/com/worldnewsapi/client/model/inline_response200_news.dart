//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse200News {
  /// Returns a new [InlineResponse200News] instance.
  InlineResponse200News({
    this.id,
    this.title,
    this.text,
    this.summary,
    this.url,
    this.image,
    this.author,
    this.language,
    this.sourceCountry,
    this.sentiment,
  });

  int id;

  String title;

  String text;

  String summary;

  String url;

  String image;

  String author;

  String language;

  String sourceCountry;

  num sentiment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse200News &&
     other.id == id &&
     other.title == title &&
     other.text == text &&
     other.summary == summary &&
     other.url == url &&
     other.image == image &&
     other.author == author &&
     other.language == language &&
     other.sourceCountry == sourceCountry &&
     other.sentiment == sentiment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (summary == null ? 0 : summary.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry.hashCode) +
    (sentiment == null ? 0 : sentiment.hashCode);

  @override
  String toString() => 'InlineResponse200News[id=$id, title=$title, text=$text, summary=$summary, url=$url, image=$image, author=$author, language=$language, sourceCountry=$sourceCountry, sentiment=$sentiment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (sourceCountry != null) {
      json[r'source_country'] = sourceCountry;
    }
    if (sentiment != null) {
      json[r'sentiment'] = sentiment;
    }
    return json;
  }

  /// Returns a new [InlineResponse200News] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse200News fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse200News(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        summary: mapValueOfType<String>(json, r'summary'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        author: mapValueOfType<String>(json, r'author'),
        language: mapValueOfType<String>(json, r'language'),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        sentiment: json[r'sentiment'] == null
          ? null
          : num.parse(json[r'sentiment'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse200News> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse200News.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse200News>[];

  static Map<String, InlineResponse200News> mapFromJson(dynamic json) {
    final map = <String, InlineResponse200News>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse200News.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse200News-objects as value to a dart map
  static Map<String, List<InlineResponse200News>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse200News>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse200News.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

