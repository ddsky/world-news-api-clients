/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.0.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.worldnewsapi.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.worldnewsapi.client.JSON;

/**
 * RetrieveNewsArticlesByIds200ResponseNewsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-10-20T17:03:50.740378100+02:00[Europe/Berlin]", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveNewsArticlesByIds200ResponseNewsInner {
  public static final String SERIALIZED_NAME_SUMMARY = "summary";
  @SerializedName(SERIALIZED_NAME_SUMMARY)
  private String summary;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_SENTIMENT = "sentiment";
  @SerializedName(SERIALIZED_NAME_SENTIMENT)
  private BigDecimal sentiment;

  public static final String SERIALIZED_NAME_LANGUAGE = "language";
  @SerializedName(SERIALIZED_NAME_LANGUAGE)
  private String language;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_SOURCE_COUNTRY = "source_country";
  @SerializedName(SERIALIZED_NAME_SOURCE_COUNTRY)
  private String sourceCountry;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_TEXT = "text";
  @SerializedName(SERIALIZED_NAME_TEXT)
  private String text;

  public static final String SERIALIZED_NAME_CATEGORY = "category";
  @SerializedName(SERIALIZED_NAME_CATEGORY)
  private String category;

  public static final String SERIALIZED_NAME_PUBLISH_DATE = "publish_date";
  @SerializedName(SERIALIZED_NAME_PUBLISH_DATE)
  private String publishDate;

  public static final String SERIALIZED_NAME_AUTHORS = "authors";
  @SerializedName(SERIALIZED_NAME_AUTHORS)
  private List<String> authors = new ArrayList<>();

  public RetrieveNewsArticlesByIds200ResponseNewsInner() {
  }

  public RetrieveNewsArticlesByIds200ResponseNewsInner summary(String summary) {
    this.summary = summary;
    return this;
  }

  /**
   * Get summary
   * @return summary
   */
  @javax.annotation.Nullable
  public String getSummary() {
    return summary;
  }

  public void setSummary(String summary) {
    this.summary = summary;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner image(String image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
  @javax.annotation.Nullable
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner sentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
    return this;
  }

  /**
   * Get sentiment
   * @return sentiment
   */
  @javax.annotation.Nullable
  public BigDecimal getSentiment() {
    return sentiment;
  }

  public void setSentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner language(String language) {
    this.language = language;
    return this;
  }

  /**
   * Get language
   * @return language
   */
  @javax.annotation.Nullable
  public String getLanguage() {
    return language;
  }

  public void setLanguage(String language) {
    this.language = language;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   */
  @javax.annotation.Nullable
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner url(String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   */
  @javax.annotation.Nullable
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner sourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
    return this;
  }

  /**
   * Get sourceCountry
   * @return sourceCountry
   */
  @javax.annotation.Nullable
  public String getSourceCountry() {
    return sourceCountry;
  }

  public void setSourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nullable
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner text(String text) {
    this.text = text;
    return this;
  }

  /**
   * Get text
   * @return text
   */
  @javax.annotation.Nullable
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner category(String category) {
    this.category = category;
    return this;
  }

  /**
   * Get category
   * @return category
   */
  @javax.annotation.Nullable
  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner publishDate(String publishDate) {
    this.publishDate = publishDate;
    return this;
  }

  /**
   * Get publishDate
   * @return publishDate
   */
  @javax.annotation.Nullable
  public String getPublishDate() {
    return publishDate;
  }

  public void setPublishDate(String publishDate) {
    this.publishDate = publishDate;
  }


  public RetrieveNewsArticlesByIds200ResponseNewsInner authors(List<String> authors) {
    this.authors = authors;
    return this;
  }

  public RetrieveNewsArticlesByIds200ResponseNewsInner addAuthorsItem(String authorsItem) {
    if (this.authors == null) {
      this.authors = new ArrayList<>();
    }
    this.authors.add(authorsItem);
    return this;
  }

  /**
   * Get authors
   * @return authors
   */
  @javax.annotation.Nullable
  public List<String> getAuthors() {
    return authors;
  }

  public void setAuthors(List<String> authors) {
    this.authors = authors;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveNewsArticlesByIds200ResponseNewsInner retrieveNewsArticlesByIds200ResponseNewsInner = (RetrieveNewsArticlesByIds200ResponseNewsInner) o;
    return Objects.equals(this.summary, retrieveNewsArticlesByIds200ResponseNewsInner.summary) &&
        Objects.equals(this.image, retrieveNewsArticlesByIds200ResponseNewsInner.image) &&
        Objects.equals(this.sentiment, retrieveNewsArticlesByIds200ResponseNewsInner.sentiment) &&
        Objects.equals(this.language, retrieveNewsArticlesByIds200ResponseNewsInner.language) &&
        Objects.equals(this.title, retrieveNewsArticlesByIds200ResponseNewsInner.title) &&
        Objects.equals(this.url, retrieveNewsArticlesByIds200ResponseNewsInner.url) &&
        Objects.equals(this.sourceCountry, retrieveNewsArticlesByIds200ResponseNewsInner.sourceCountry) &&
        Objects.equals(this.id, retrieveNewsArticlesByIds200ResponseNewsInner.id) &&
        Objects.equals(this.text, retrieveNewsArticlesByIds200ResponseNewsInner.text) &&
        Objects.equals(this.category, retrieveNewsArticlesByIds200ResponseNewsInner.category) &&
        Objects.equals(this.publishDate, retrieveNewsArticlesByIds200ResponseNewsInner.publishDate) &&
        Objects.equals(this.authors, retrieveNewsArticlesByIds200ResponseNewsInner.authors);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(summary, image, sentiment, language, title, url, sourceCountry, id, text, category, publishDate, authors);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveNewsArticlesByIds200ResponseNewsInner {\n");
    sb.append("    summary: ").append(toIndentedString(summary)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    sentiment: ").append(toIndentedString(sentiment)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    sourceCountry: ").append(toIndentedString(sourceCountry)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    category: ").append(toIndentedString(category)).append("\n");
    sb.append("    publishDate: ").append(toIndentedString(publishDate)).append("\n");
    sb.append("    authors: ").append(toIndentedString(authors)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("summary");
    openapiFields.add("image");
    openapiFields.add("sentiment");
    openapiFields.add("language");
    openapiFields.add("title");
    openapiFields.add("url");
    openapiFields.add("source_country");
    openapiFields.add("id");
    openapiFields.add("text");
    openapiFields.add("category");
    openapiFields.add("publish_date");
    openapiFields.add("authors");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveNewsArticlesByIds200ResponseNewsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveNewsArticlesByIds200ResponseNewsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveNewsArticlesByIds200ResponseNewsInner is not found in the empty JSON string", RetrieveNewsArticlesByIds200ResponseNewsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveNewsArticlesByIds200ResponseNewsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveNewsArticlesByIds200ResponseNewsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("summary") != null && !jsonObj.get("summary").isJsonNull()) && !jsonObj.get("summary").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `summary` to be a primitive type in the JSON string but got `%s`", jsonObj.get("summary").toString()));
      }
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if ((jsonObj.get("language") != null && !jsonObj.get("language").isJsonNull()) && !jsonObj.get("language").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `language` to be a primitive type in the JSON string but got `%s`", jsonObj.get("language").toString()));
      }
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if ((jsonObj.get("url") != null && !jsonObj.get("url").isJsonNull()) && !jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
      if ((jsonObj.get("source_country") != null && !jsonObj.get("source_country").isJsonNull()) && !jsonObj.get("source_country").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `source_country` to be a primitive type in the JSON string but got `%s`", jsonObj.get("source_country").toString()));
      }
      if ((jsonObj.get("text") != null && !jsonObj.get("text").isJsonNull()) && !jsonObj.get("text").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `text` to be a primitive type in the JSON string but got `%s`", jsonObj.get("text").toString()));
      }
      if ((jsonObj.get("category") != null && !jsonObj.get("category").isJsonNull()) && !jsonObj.get("category").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `category` to be a primitive type in the JSON string but got `%s`", jsonObj.get("category").toString()));
      }
      if ((jsonObj.get("publish_date") != null && !jsonObj.get("publish_date").isJsonNull()) && !jsonObj.get("publish_date").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `publish_date` to be a primitive type in the JSON string but got `%s`", jsonObj.get("publish_date").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("authors") != null && !jsonObj.get("authors").isJsonNull() && !jsonObj.get("authors").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `authors` to be an array in the JSON string but got `%s`", jsonObj.get("authors").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveNewsArticlesByIds200ResponseNewsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveNewsArticlesByIds200ResponseNewsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveNewsArticlesByIds200ResponseNewsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveNewsArticlesByIds200ResponseNewsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveNewsArticlesByIds200ResponseNewsInner>() {
           @Override
           public void write(JsonWriter out, RetrieveNewsArticlesByIds200ResponseNewsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveNewsArticlesByIds200ResponseNewsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveNewsArticlesByIds200ResponseNewsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveNewsArticlesByIds200ResponseNewsInner
   * @throws IOException if the JSON string is invalid with respect to RetrieveNewsArticlesByIds200ResponseNewsInner
   */
  public static RetrieveNewsArticlesByIds200ResponseNewsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveNewsArticlesByIds200ResponseNewsInner.class);
  }

  /**
   * Convert an instance of RetrieveNewsArticlesByIds200ResponseNewsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

