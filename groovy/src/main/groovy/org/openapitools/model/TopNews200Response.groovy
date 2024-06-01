package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.TopNews200ResponseTopNewsInner;

@Canonical
class TopNews200Response {
    
    List<TopNews200ResponseTopNewsInner> topNews = new ArrayList<>()
    
    String language
    
    String country
}
