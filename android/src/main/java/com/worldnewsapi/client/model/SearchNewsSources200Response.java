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

import com.worldnewsapi.client.model.SearchNewsSources200ResponseSourcesInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchNewsSources200Response {
  
  @SerializedName("available")
  private Integer available = null;
  @SerializedName("sources")
  private List<SearchNewsSources200ResponseSourcesInner> sources = null;

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
  public List<SearchNewsSources200ResponseSourcesInner> getSources() {
    return sources;
  }
  public void setSources(List<SearchNewsSources200ResponseSourcesInner> sources) {
    this.sources = sources;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchNewsSources200Response searchNewsSources200Response = (SearchNewsSources200Response) o;
    return (this.available == null ? searchNewsSources200Response.available == null : this.available.equals(searchNewsSources200Response.available)) &&
        (this.sources == null ? searchNewsSources200Response.sources == null : this.sources.equals(searchNewsSources200Response.sources));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.available == null ? 0: this.available.hashCode());
    result = 31 * result + (this.sources == null ? 0: this.sources.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchNewsSources200Response {\n");
    
    sb.append("  available: ").append(available).append("\n");
    sb.append("  sources: ").append(sources).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
