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
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;

/**
 * InlineResponse2001
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-05T15:22:16.944+02:00[Europe/Berlin]")
public class InlineResponse2001 {
  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_TEXT = "text";
  @SerializedName(SERIALIZED_NAME_TEXT)
  private String text;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_AUTHOR = "author";
  @SerializedName(SERIALIZED_NAME_AUTHOR)
  private String author;

  public static final String SERIALIZED_NAME_LANGUAGE = "language";
  @SerializedName(SERIALIZED_NAME_LANGUAGE)
  private String language;

  public static final String SERIALIZED_NAME_SOURCE_COUNTRY = "source_country";
  @SerializedName(SERIALIZED_NAME_SOURCE_COUNTRY)
  private String sourceCountry;

  public static final String SERIALIZED_NAME_SENTIMENT = "sentiment";
  @SerializedName(SERIALIZED_NAME_SENTIMENT)
  private BigDecimal sentiment;

  public InlineResponse2001() { 
  }

  public InlineResponse2001 title(String title) {
    
    this.title = title;
    return this;
  }

   /**
   * Get title
   * @return title
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTitle() {
    return title;
  }


  public void setTitle(String title) {
    this.title = title;
  }


  public InlineResponse2001 text(String text) {
    
    this.text = text;
    return this;
  }

   /**
   * Get text
   * @return text
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getText() {
    return text;
  }


  public void setText(String text) {
    this.text = text;
  }


  public InlineResponse2001 url(String url) {
    
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUrl() {
    return url;
  }


  public void setUrl(String url) {
    this.url = url;
  }


  public InlineResponse2001 image(String image) {
    
    this.image = image;
    return this;
  }

   /**
   * Get image
   * @return image
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getImage() {
    return image;
  }


  public void setImage(String image) {
    this.image = image;
  }


  public InlineResponse2001 author(String author) {
    
    this.author = author;
    return this;
  }

   /**
   * Get author
   * @return author
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getAuthor() {
    return author;
  }


  public void setAuthor(String author) {
    this.author = author;
  }


  public InlineResponse2001 language(String language) {
    
    this.language = language;
    return this;
  }

   /**
   * Get language
   * @return language
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getLanguage() {
    return language;
  }


  public void setLanguage(String language) {
    this.language = language;
  }


  public InlineResponse2001 sourceCountry(String sourceCountry) {
    
    this.sourceCountry = sourceCountry;
    return this;
  }

   /**
   * Get sourceCountry
   * @return sourceCountry
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getSourceCountry() {
    return sourceCountry;
  }


  public void setSourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
  }


  public InlineResponse2001 sentiment(BigDecimal sentiment) {
    
    this.sentiment = sentiment;
    return this;
  }

   /**
   * Get sentiment
   * @return sentiment
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigDecimal getSentiment() {
    return sentiment;
  }


  public void setSentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2001 inlineResponse2001 = (InlineResponse2001) o;
    return Objects.equals(this.title, inlineResponse2001.title) &&
        Objects.equals(this.text, inlineResponse2001.text) &&
        Objects.equals(this.url, inlineResponse2001.url) &&
        Objects.equals(this.image, inlineResponse2001.image) &&
        Objects.equals(this.author, inlineResponse2001.author) &&
        Objects.equals(this.language, inlineResponse2001.language) &&
        Objects.equals(this.sourceCountry, inlineResponse2001.sourceCountry) &&
        Objects.equals(this.sentiment, inlineResponse2001.sentiment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, text, url, image, author, language, sourceCountry, sentiment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2001 {\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    author: ").append(toIndentedString(author)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    sourceCountry: ").append(toIndentedString(sourceCountry)).append("\n");
    sb.append("    sentiment: ").append(toIndentedString(sentiment)).append("\n");
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

