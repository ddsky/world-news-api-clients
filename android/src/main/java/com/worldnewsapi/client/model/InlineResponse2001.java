/**
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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class InlineResponse2001 {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("text")
  private String text = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("author")
  private String author = null;
  @SerializedName("language")
  private String language = null;
  @SerializedName("source_country")
  private String sourceCountry = null;
  @SerializedName("sentiment")
  private BigDecimal sentiment = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAuthor() {
    return author;
  }
  public void setAuthor(String author) {
    this.author = author;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLanguage() {
    return language;
  }
  public void setLanguage(String language) {
    this.language = language;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceCountry() {
    return sourceCountry;
  }
  public void setSourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
  }

  /**
   **/
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
    return (this.title == null ? inlineResponse2001.title == null : this.title.equals(inlineResponse2001.title)) &&
        (this.text == null ? inlineResponse2001.text == null : this.text.equals(inlineResponse2001.text)) &&
        (this.url == null ? inlineResponse2001.url == null : this.url.equals(inlineResponse2001.url)) &&
        (this.image == null ? inlineResponse2001.image == null : this.image.equals(inlineResponse2001.image)) &&
        (this.author == null ? inlineResponse2001.author == null : this.author.equals(inlineResponse2001.author)) &&
        (this.language == null ? inlineResponse2001.language == null : this.language.equals(inlineResponse2001.language)) &&
        (this.sourceCountry == null ? inlineResponse2001.sourceCountry == null : this.sourceCountry.equals(inlineResponse2001.sourceCountry)) &&
        (this.sentiment == null ? inlineResponse2001.sentiment == null : this.sentiment.equals(inlineResponse2001.sentiment));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.author == null ? 0: this.author.hashCode());
    result = 31 * result + (this.language == null ? 0: this.language.hashCode());
    result = 31 * result + (this.sourceCountry == null ? 0: this.sourceCountry.hashCode());
    result = 31 * result + (this.sentiment == null ? 0: this.sentiment.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2001 {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  author: ").append(author).append("\n");
    sb.append("  language: ").append(language).append("\n");
    sb.append("  sourceCountry: ").append(sourceCountry).append("\n");
    sb.append("  sentiment: ").append(sentiment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
