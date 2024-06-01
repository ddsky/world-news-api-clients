package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ExtractNews200Response {
    
    String title
    
    String text
    
    String url
    
    String image
    
    String publishDate
    
    String author
    
    String language
    
    String sourceCountry
    
    BigDecimal sentiment
}
