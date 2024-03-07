package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NewsArticle;

@Canonical
class SearchNewsResponse {
    
    Integer offset
    
    Integer number
    
    Integer available
    
    List<NewsArticle> news = new ArrayList<>()
}
