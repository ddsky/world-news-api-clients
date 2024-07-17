/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.2
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
import com.worldnewsapi.client.model.RetrieveNewspaperFrontPage200ResponseFrontPage;
import java.io.IOException;
import java.util.Arrays;

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
 * RetrieveNewspaperFrontPage200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-07-17T14:39:04.107860+02:00[Europe/Berlin]", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveNewspaperFrontPage200Response {
  public static final String SERIALIZED_NAME_FRONT_PAGE = "front_page";
  @SerializedName(SERIALIZED_NAME_FRONT_PAGE)
  private RetrieveNewspaperFrontPage200ResponseFrontPage frontPage;

  public RetrieveNewspaperFrontPage200Response() {
  }

  public RetrieveNewspaperFrontPage200Response frontPage(RetrieveNewspaperFrontPage200ResponseFrontPage frontPage) {
    this.frontPage = frontPage;
    return this;
  }

  /**
   * Get frontPage
   * @return frontPage
   */
  @javax.annotation.Nullable
  public RetrieveNewspaperFrontPage200ResponseFrontPage getFrontPage() {
    return frontPage;
  }

  public void setFrontPage(RetrieveNewspaperFrontPage200ResponseFrontPage frontPage) {
    this.frontPage = frontPage;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveNewspaperFrontPage200Response retrieveNewspaperFrontPage200Response = (RetrieveNewspaperFrontPage200Response) o;
    return Objects.equals(this.frontPage, retrieveNewspaperFrontPage200Response.frontPage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(frontPage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveNewspaperFrontPage200Response {\n");
    sb.append("    frontPage: ").append(toIndentedString(frontPage)).append("\n");
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
    openapiFields.add("front_page");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveNewspaperFrontPage200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveNewspaperFrontPage200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveNewspaperFrontPage200Response is not found in the empty JSON string", RetrieveNewspaperFrontPage200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveNewspaperFrontPage200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveNewspaperFrontPage200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `front_page`
      if (jsonObj.get("front_page") != null && !jsonObj.get("front_page").isJsonNull()) {
        RetrieveNewspaperFrontPage200ResponseFrontPage.validateJsonElement(jsonObj.get("front_page"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveNewspaperFrontPage200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveNewspaperFrontPage200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveNewspaperFrontPage200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveNewspaperFrontPage200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveNewspaperFrontPage200Response>() {
           @Override
           public void write(JsonWriter out, RetrieveNewspaperFrontPage200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveNewspaperFrontPage200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveNewspaperFrontPage200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveNewspaperFrontPage200Response
   * @throws IOException if the JSON string is invalid with respect to RetrieveNewspaperFrontPage200Response
   */
  public static RetrieveNewspaperFrontPage200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveNewspaperFrontPage200Response.class);
  }

  /**
   * Convert an instance of RetrieveNewspaperFrontPage200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
