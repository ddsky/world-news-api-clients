package com.worldnewsapi.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse2001 {
    
    String title
    
    String text
    
    String url
    
    String image
    
    String author
    
    String language
    
    String sourceCountry
    
    BigDecimal sentiment
}
