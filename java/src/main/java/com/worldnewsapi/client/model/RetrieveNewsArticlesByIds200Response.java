/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.1
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
import com.worldnewsapi.client.model.RetrieveNewsArticlesByIds200ResponseNewsInner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
 * RetrieveNewsArticlesByIds200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-07-17T13:26:24.757570900+02:00[Europe/Berlin]", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveNewsArticlesByIds200Response {
  public static final String SERIALIZED_NAME_NEWS = "news";
  @SerializedName(SERIALIZED_NAME_NEWS)
  private List<RetrieveNewsArticlesByIds200ResponseNewsInner> news = new ArrayList<>();

  public RetrieveNewsArticlesByIds200Response() {
  }

  public RetrieveNewsArticlesByIds200Response news(List<RetrieveNewsArticlesByIds200ResponseNewsInner> news) {
    this.news = news;
    return this;
  }

  public RetrieveNewsArticlesByIds200Response addNewsItem(RetrieveNewsArticlesByIds200ResponseNewsInner newsItem) {
    if (this.news == null) {
      this.news = new ArrayList<>();
    }
    this.news.add(newsItem);
    return this;
  }

  /**
   * Get news
   * @return news
   */
  @javax.annotation.Nullable
  public List<RetrieveNewsArticlesByIds200ResponseNewsInner> getNews() {
    return news;
  }

  public void setNews(List<RetrieveNewsArticlesByIds200ResponseNewsInner> news) {
    this.news = news;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveNewsArticlesByIds200Response retrieveNewsArticlesByIds200Response = (RetrieveNewsArticlesByIds200Response) o;
    return Objects.equals(this.news, retrieveNewsArticlesByIds200Response.news);
  }

  @Override
  public int hashCode() {
    return Objects.hash(news);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveNewsArticlesByIds200Response {\n");
    sb.append("    news: ").append(toIndentedString(news)).append("\n");
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
    openapiFields.add("news");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveNewsArticlesByIds200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveNewsArticlesByIds200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveNewsArticlesByIds200Response is not found in the empty JSON string", RetrieveNewsArticlesByIds200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveNewsArticlesByIds200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveNewsArticlesByIds200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("news") != null && !jsonObj.get("news").isJsonNull()) {
        JsonArray jsonArraynews = jsonObj.getAsJsonArray("news");
        if (jsonArraynews != null) {
          // ensure the json data is an array
          if (!jsonObj.get("news").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `news` to be an array in the JSON string but got `%s`", jsonObj.get("news").toString()));
          }

          // validate the optional field `news` (array)
          for (int i = 0; i < jsonArraynews.size(); i++) {
            RetrieveNewsArticlesByIds200ResponseNewsInner.validateJsonElement(jsonArraynews.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveNewsArticlesByIds200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveNewsArticlesByIds200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveNewsArticlesByIds200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveNewsArticlesByIds200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveNewsArticlesByIds200Response>() {
           @Override
           public void write(JsonWriter out, RetrieveNewsArticlesByIds200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveNewsArticlesByIds200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveNewsArticlesByIds200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveNewsArticlesByIds200Response
   * @throws IOException if the JSON string is invalid with respect to RetrieveNewsArticlesByIds200Response
   */
  public static RetrieveNewsArticlesByIds200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveNewsArticlesByIds200Response.class);
  }

  /**
   * Convert an instance of RetrieveNewsArticlesByIds200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

