package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.ExtractNews200ResponseImagesInner;
import org.openapitools.model.ExtractNews200ResponseVideosInner;

@Canonical
class ExtractNews200Response {
    
    String title
    
    String text
    
    String url
    
    String image
    
    List<ExtractNews200ResponseImagesInner> images = new ArrayList<>()
    
    String video
    
    List<ExtractNews200ResponseVideosInner> videos = new ArrayList<>()
    
    String publishDate
    
    String author
    
    List<String> authors = new ArrayList<>()
    
    String language
}
