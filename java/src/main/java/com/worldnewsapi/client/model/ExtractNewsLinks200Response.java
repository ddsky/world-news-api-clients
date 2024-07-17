/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
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
 * ExtractNewsLinks200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-07-17T10:14:12.884190300+02:00[Europe/Berlin]", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ExtractNewsLinks200Response {
  public static final String SERIALIZED_NAME_NEWS_LINKS = "news_links";
  @SerializedName(SERIALIZED_NAME_NEWS_LINKS)
  private List<String> newsLinks = new ArrayList<>();

  public ExtractNewsLinks200Response() {
  }

  public ExtractNewsLinks200Response newsLinks(List<String> newsLinks) {
    this.newsLinks = newsLinks;
    return this;
  }

  public ExtractNewsLinks200Response addNewsLinksItem(String newsLinksItem) {
    if (this.newsLinks == null) {
      this.newsLinks = new ArrayList<>();
    }
    this.newsLinks.add(newsLinksItem);
    return this;
  }

  /**
   * Get newsLinks
   * @return newsLinks
   */
  @javax.annotation.Nullable
  public List<String> getNewsLinks() {
    return newsLinks;
  }

  public void setNewsLinks(List<String> newsLinks) {
    this.newsLinks = newsLinks;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractNewsLinks200Response extractNewsLinks200Response = (ExtractNewsLinks200Response) o;
    return Objects.equals(this.newsLinks, extractNewsLinks200Response.newsLinks);
  }

  @Override
  public int hashCode() {
    return Objects.hash(newsLinks);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractNewsLinks200Response {\n");
    sb.append("    newsLinks: ").append(toIndentedString(newsLinks)).append("\n");
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
    openapiFields.add("news_links");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ExtractNewsLinks200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractNewsLinks200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractNewsLinks200Response is not found in the empty JSON string", ExtractNewsLinks200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractNewsLinks200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractNewsLinks200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the optional json data is an array if present
      if (jsonObj.get("news_links") != null && !jsonObj.get("news_links").isJsonNull() && !jsonObj.get("news_links").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `news_links` to be an array in the JSON string but got `%s`", jsonObj.get("news_links").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractNewsLinks200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractNewsLinks200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractNewsLinks200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractNewsLinks200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractNewsLinks200Response>() {
           @Override
           public void write(JsonWriter out, ExtractNewsLinks200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractNewsLinks200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ExtractNewsLinks200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ExtractNewsLinks200Response
   * @throws IOException if the JSON string is invalid with respect to ExtractNewsLinks200Response
   */
  public static ExtractNewsLinks200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractNewsLinks200Response.class);
  }

  /**
   * Convert an instance of ExtractNewsLinks200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

