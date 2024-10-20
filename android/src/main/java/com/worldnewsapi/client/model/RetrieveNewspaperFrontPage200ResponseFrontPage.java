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
public class RetrieveNewspaperFrontPage200ResponseFrontPage {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("date")
  private String date = null;
  @SerializedName("country")
  private String country = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("language")
  private String language = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
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
  public String getLanguage() {
    return language;
  }
  public void setLanguage(String language) {
    this.language = language;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveNewspaperFrontPage200ResponseFrontPage retrieveNewspaperFrontPage200ResponseFrontPage = (RetrieveNewspaperFrontPage200ResponseFrontPage) o;
    return (this.name == null ? retrieveNewspaperFrontPage200ResponseFrontPage.name == null : this.name.equals(retrieveNewspaperFrontPage200ResponseFrontPage.name)) &&
        (this.date == null ? retrieveNewspaperFrontPage200ResponseFrontPage.date == null : this.date.equals(retrieveNewspaperFrontPage200ResponseFrontPage.date)) &&
        (this.country == null ? retrieveNewspaperFrontPage200ResponseFrontPage.country == null : this.country.equals(retrieveNewspaperFrontPage200ResponseFrontPage.country)) &&
        (this.image == null ? retrieveNewspaperFrontPage200ResponseFrontPage.image == null : this.image.equals(retrieveNewspaperFrontPage200ResponseFrontPage.image)) &&
        (this.language == null ? retrieveNewspaperFrontPage200ResponseFrontPage.language == null : this.language.equals(retrieveNewspaperFrontPage200ResponseFrontPage.language));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.country == null ? 0: this.country.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.language == null ? 0: this.language.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveNewspaperFrontPage200ResponseFrontPage {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  language: ").append(language).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
