/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.worldnewsapi.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.worldnewsapi.client.model.InlineResponse200News;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse200
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-10-09T02:36:49.995+02:00[Europe/Berlin]")
public class InlineResponse200 {
  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public static final String SERIALIZED_NAME_AVAILABLE = "available";
  @SerializedName(SERIALIZED_NAME_AVAILABLE)
  private Integer available;

  public static final String SERIALIZED_NAME_NEWS = "news";
  @SerializedName(SERIALIZED_NAME_NEWS)
  private List<InlineResponse200News> news = new ArrayList<>();

  public InlineResponse200() { 
  }

  public InlineResponse200 offset(Integer offset) {
    
    this.offset = offset;
    return this;
  }

   /**
   * Get offset
   * @return offset
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getOffset() {
    return offset;
  }


  public void setOffset(Integer offset) {
    this.offset = offset;
  }


  public InlineResponse200 number(Integer number) {
    
    this.number = number;
    return this;
  }

   /**
   * Get number
   * @return number
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getNumber() {
    return number;
  }


  public void setNumber(Integer number) {
    this.number = number;
  }


  public InlineResponse200 available(Integer available) {
    
    this.available = available;
    return this;
  }

   /**
   * Get available
   * @return available
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getAvailable() {
    return available;
  }


  public void setAvailable(Integer available) {
    this.available = available;
  }


  public InlineResponse200 news(List<InlineResponse200News> news) {
    
    this.news = news;
    return this;
  }

  public InlineResponse200 addNewsItem(InlineResponse200News newsItem) {
    this.news.add(newsItem);
    return this;
  }

   /**
   * Get news
   * @return news
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<InlineResponse200News> getNews() {
    return news;
  }


  public void setNews(List<InlineResponse200News> news) {
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
    InlineResponse200 inlineResponse200 = (InlineResponse200) o;
    return Objects.equals(this.offset, inlineResponse200.offset) &&
        Objects.equals(this.number, inlineResponse200.number) &&
        Objects.equals(this.available, inlineResponse200.available) &&
        Objects.equals(this.news, inlineResponse200.news);
  }

  @Override
  public int hashCode() {
    return Objects.hash(offset, number, available, news);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200 {\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
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

}

