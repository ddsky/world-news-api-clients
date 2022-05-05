package com.worldnewsapi.client.model;

import groovy.transform.Canonical
import com.worldnewsapi.client.model.InlineResponse200News;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse200 {
    
    Integer offset
    
    Integer number
    
    Integer available
    
    List<InlineResponse200News> news = new ArrayList<InlineResponse200News>()
}
