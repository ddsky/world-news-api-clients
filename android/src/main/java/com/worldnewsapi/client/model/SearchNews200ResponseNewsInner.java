/**
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

import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchNews200ResponseNewsInner {
  
  @SerializedName("summary")
  private String summary = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("sentiment")
  private BigDecimal sentiment = null;
  @SerializedName("author")
  private String author = null;
  @SerializedName("language")
  private String language = null;
  @SerializedName("video")
  private String video = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("source_country")
  private String sourceCountry = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("text")
  private String text = null;
  @SerializedName("category")
  private String category = null;
  @SerializedName("publish_date")
  private String publishDate = null;
  @SerializedName("authors")
  private List<String> authors = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSummary() {
    return summary;
  }
  public void setSummary(String summary) {
    this.summary = summary;
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
  public BigDecimal getSentiment() {
    return sentiment;
  }
  public void setSentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
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
  public String getVideo() {
    return video;
  }
  public void setVideo(String video) {
    this.video = video;
  }

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
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
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
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
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
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPublishDate() {
    return publishDate;
  }
  public void setPublishDate(String publishDate) {
    this.publishDate = publishDate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    SearchNews200ResponseNewsInner searchNews200ResponseNewsInner = (SearchNews200ResponseNewsInner) o;
    return (this.summary == null ? searchNews200ResponseNewsInner.summary == null : this.summary.equals(searchNews200ResponseNewsInner.summary)) &&
        (this.image == null ? searchNews200ResponseNewsInner.image == null : this.image.equals(searchNews200ResponseNewsInner.image)) &&
        (this.sentiment == null ? searchNews200ResponseNewsInner.sentiment == null : this.sentiment.equals(searchNews200ResponseNewsInner.sentiment)) &&
        (this.author == null ? searchNews200ResponseNewsInner.author == null : this.author.equals(searchNews200ResponseNewsInner.author)) &&
        (this.language == null ? searchNews200ResponseNewsInner.language == null : this.language.equals(searchNews200ResponseNewsInner.language)) &&
        (this.video == null ? searchNews200ResponseNewsInner.video == null : this.video.equals(searchNews200ResponseNewsInner.video)) &&
        (this.title == null ? searchNews200ResponseNewsInner.title == null : this.title.equals(searchNews200ResponseNewsInner.title)) &&
        (this.url == null ? searchNews200ResponseNewsInner.url == null : this.url.equals(searchNews200ResponseNewsInner.url)) &&
        (this.sourceCountry == null ? searchNews200ResponseNewsInner.sourceCountry == null : this.sourceCountry.equals(searchNews200ResponseNewsInner.sourceCountry)) &&
        (this.id == null ? searchNews200ResponseNewsInner.id == null : this.id.equals(searchNews200ResponseNewsInner.id)) &&
        (this.text == null ? searchNews200ResponseNewsInner.text == null : this.text.equals(searchNews200ResponseNewsInner.text)) &&
        (this.category == null ? searchNews200ResponseNewsInner.category == null : this.category.equals(searchNews200ResponseNewsInner.category)) &&
        (this.publishDate == null ? searchNews200ResponseNewsInner.publishDate == null : this.publishDate.equals(searchNews200ResponseNewsInner.publishDate)) &&
        (this.authors == null ? searchNews200ResponseNewsInner.authors == null : this.authors.equals(searchNews200ResponseNewsInner.authors));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.summary == null ? 0: this.summary.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.sentiment == null ? 0: this.sentiment.hashCode());
    result = 31 * result + (this.author == null ? 0: this.author.hashCode());
    result = 31 * result + (this.language == null ? 0: this.language.hashCode());
    result = 31 * result + (this.video == null ? 0: this.video.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.sourceCountry == null ? 0: this.sourceCountry.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    result = 31 * result + (this.category == null ? 0: this.category.hashCode());
    result = 31 * result + (this.publishDate == null ? 0: this.publishDate.hashCode());
    result = 31 * result + (this.authors == null ? 0: this.authors.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchNews200ResponseNewsInner {\n");
    
    sb.append("  summary: ").append(summary).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  sentiment: ").append(sentiment).append("\n");
    sb.append("  author: ").append(author).append("\n");
    sb.append("  language: ").append(language).append("\n");
    sb.append("  video: ").append(video).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  sourceCountry: ").append(sourceCountry).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("  category: ").append(category).append("\n");
    sb.append("  publishDate: ").append(publishDate).append("\n");
    sb.append("  authors: ").append(authors).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
