package com.worldnewsapi.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class News {
    
    Integer id
    
    String title
    
    String text
    
    String summary
    
    String url
    
    String image
    
    String publishDate
    
    String author
    
    String language
    
    String sourceCountry
    
    BigDecimal sentiment
}
