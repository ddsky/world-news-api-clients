package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchNews200ResponseNewsInner;

@Canonical
class SearchNews200Response {
    
    Integer offset
    
    Integer number
    
    Integer available
    
    List<SearchNews200ResponseNewsInner> news = new ArrayList<>()
}
