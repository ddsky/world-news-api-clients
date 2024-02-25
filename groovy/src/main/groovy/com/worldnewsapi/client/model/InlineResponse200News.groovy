package com.worldnewsapi.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse200News {
    
    Integer id
    
    String title
    
    String text
    
    String summary
    
    String url
    
    String image
    
    String author
    
    String language
    
    String sourceCountry
    
    BigDecimal sentiment
}
