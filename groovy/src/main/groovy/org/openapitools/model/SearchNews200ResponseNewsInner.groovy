package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SearchNews200ResponseNewsInner {
    
    String summary
    
    String image
    
    BigDecimal sentiment
    
    String author
    
    String language
    
    String video
    
    String title
    
    String url
    
    String sourceCountry
    
    Integer id
    
    String text
    
    String publishDate
    
    List<String> authors = new ArrayList<>()
}
