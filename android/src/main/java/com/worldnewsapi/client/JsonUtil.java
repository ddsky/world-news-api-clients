/**
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

package com.worldnewsapi.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import com.worldnewsapi.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("ExtractNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200Response>>(){}.getType();
    }
    
    if ("ExtractNews200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200ResponseImagesInner>>(){}.getType();
    }
    
    if ("ExtractNews200ResponseVideosInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200ResponseVideosInner>>(){}.getType();
    }
    
    if ("ExtractNewsLinks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNewsLinks200Response>>(){}.getType();
    }
    
    if ("GetGeoCoordinates200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<GetGeoCoordinates200Response>>(){}.getType();
    }
    
    if ("NewspaperFrontPages200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<NewspaperFrontPages200Response>>(){}.getType();
    }
    
    if ("NewspaperFrontPages200ResponseFrontPage".equalsIgnoreCase(className)) {
      return new TypeToken<List<NewspaperFrontPages200ResponseFrontPage>>(){}.getType();
    }
    
    if ("RetrieveNewsArticlesByIds200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveNewsArticlesByIds200Response>>(){}.getType();
    }
    
    if ("RetrieveNewsArticlesByIds200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveNewsArticlesByIds200ResponseNewsInner>>(){}.getType();
    }
    
    if ("SearchNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchNews200Response>>(){}.getType();
    }
    
    if ("SearchNews200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchNews200ResponseNewsInner>>(){}.getType();
    }
    
    if ("TopNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200Response>>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200ResponseTopNewsInner>>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInnerNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200ResponseTopNewsInnerNewsInner>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("ExtractNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200Response>(){}.getType();
    }
    
    if ("ExtractNews200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200ResponseImagesInner>(){}.getType();
    }
    
    if ("ExtractNews200ResponseVideosInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200ResponseVideosInner>(){}.getType();
    }
    
    if ("ExtractNewsLinks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNewsLinks200Response>(){}.getType();
    }
    
    if ("GetGeoCoordinates200Response".equalsIgnoreCase(className)) {
      return new TypeToken<GetGeoCoordinates200Response>(){}.getType();
    }
    
    if ("NewspaperFrontPages200Response".equalsIgnoreCase(className)) {
      return new TypeToken<NewspaperFrontPages200Response>(){}.getType();
    }
    
    if ("NewspaperFrontPages200ResponseFrontPage".equalsIgnoreCase(className)) {
      return new TypeToken<NewspaperFrontPages200ResponseFrontPage>(){}.getType();
    }
    
    if ("RetrieveNewsArticlesByIds200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveNewsArticlesByIds200Response>(){}.getType();
    }
    
    if ("RetrieveNewsArticlesByIds200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveNewsArticlesByIds200ResponseNewsInner>(){}.getType();
    }
    
    if ("SearchNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchNews200Response>(){}.getType();
    }
    
    if ("SearchNews200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchNews200ResponseNewsInner>(){}.getType();
    }
    
    if ("TopNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200Response>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200ResponseTopNewsInner>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInnerNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200ResponseTopNewsInnerNewsInner>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
