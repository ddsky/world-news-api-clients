/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.0.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.worldnewsapi.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractNews200ResponseImagesInner {
  
  @SerializedName("width")
  private Integer width = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("height")
  private Integer height = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getWidth() {
    return width;
  }
  public void setWidth(Integer width) {
    this.width = width;
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
  public Integer getHeight() {
    return height;
  }
  public void setHeight(Integer height) {
    this.height = height;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractNews200ResponseImagesInner extractNews200ResponseImagesInner = (ExtractNews200ResponseImagesInner) o;
    return (this.width == null ? extractNews200ResponseImagesInner.width == null : this.width.equals(extractNews200ResponseImagesInner.width)) &&
        (this.title == null ? extractNews200ResponseImagesInner.title == null : this.title.equals(extractNews200ResponseImagesInner.title)) &&
        (this.url == null ? extractNews200ResponseImagesInner.url == null : this.url.equals(extractNews200ResponseImagesInner.url)) &&
        (this.height == null ? extractNews200ResponseImagesInner.height == null : this.height.equals(extractNews200ResponseImagesInner.height));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.width == null ? 0: this.width.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.height == null ? 0: this.height.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractNews200ResponseImagesInner {\n");
    
    sb.append("  width: ").append(width).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
