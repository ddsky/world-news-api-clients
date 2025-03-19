/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.worldnewsapi.client.model;

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractNewsLinks200Response {
  
  @SerializedName("news_links")
  private List<String> newsLinks = null;

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this.newsLinks == null ? extractNewsLinks200Response.newsLinks == null : this.newsLinks.equals(extractNewsLinks200Response.newsLinks));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.newsLinks == null ? 0: this.newsLinks.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractNewsLinks200Response {\n");
    
    sb.append("  newsLinks: ").append(newsLinks).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
