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

import com.worldnewsapi.client.model.RetrieveNewspaperFrontPage200ResponseFrontPage;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveNewspaperFrontPage200Response {
  
  @SerializedName("front_page")
  private RetrieveNewspaperFrontPage200ResponseFrontPage frontPage = null;

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this.frontPage == null ? retrieveNewspaperFrontPage200Response.frontPage == null : this.frontPage.equals(retrieveNewspaperFrontPage200Response.frontPage));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.frontPage == null ? 0: this.frontPage.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveNewspaperFrontPage200Response {\n");
    
    sb.append("  frontPage: ").append(frontPage).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
