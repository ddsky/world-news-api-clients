package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ExtractNewsResponse {
    
    String title
    
    String text
    
    String url
    
    String image
    
    String author
    
    String language
    
    String sourceCountry
    
    BigDecimal sentiment
}
