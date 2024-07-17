/**
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

import com.worldnewsapi.client.model.SearchNews200ResponseNewsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchNews200Response {
  
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("available")
  private Integer available = null;
  @SerializedName("news")
  private List<SearchNews200ResponseNewsInner> news = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getOffset() {
    return offset;
  }
  public void setOffset(Integer offset) {
    this.offset = offset;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAvailable() {
    return available;
  }
  public void setAvailable(Integer available) {
    this.available = available;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchNews200ResponseNewsInner> getNews() {
    return news;
  }
  public void setNews(List<SearchNews200ResponseNewsInner> news) {
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
    SearchNews200Response searchNews200Response = (SearchNews200Response) o;
    return (this.offset == null ? searchNews200Response.offset == null : this.offset.equals(searchNews200Response.offset)) &&
        (this.number == null ? searchNews200Response.number == null : this.number.equals(searchNews200Response.number)) &&
        (this.available == null ? searchNews200Response.available == null : this.available.equals(searchNews200Response.available)) &&
        (this.news == null ? searchNews200Response.news == null : this.news.equals(searchNews200Response.news));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.available == null ? 0: this.available.hashCode());
    result = 31 * result + (this.news == null ? 0: this.news.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchNews200Response {\n");
    
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  available: ").append(available).append("\n");
    sb.append("  news: ").append(news).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
