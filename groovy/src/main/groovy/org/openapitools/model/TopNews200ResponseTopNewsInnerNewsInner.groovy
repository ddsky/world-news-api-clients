package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class TopNews200ResponseTopNewsInnerNewsInner {
    
    String summary
    
    String image
    
    Integer id
    
    String text
    
    String title
    
    String publishDate
    
    String url
    
    List<String> authors = new ArrayList<>()
}
