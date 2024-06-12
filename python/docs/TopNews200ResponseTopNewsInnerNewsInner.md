# TopNews200ResponseTopNewsInnerNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**text** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from worldnewsapi.models.top_news200_response_top_news_inner_news_inner import TopNews200ResponseTopNewsInnerNewsInner

# TODO update the JSON string below
json = "{}"
# create an instance of TopNews200ResponseTopNewsInnerNewsInner from a JSON string
top_news200_response_top_news_inner_news_inner_instance = TopNews200ResponseTopNewsInnerNewsInner.from_json(json)
# print the JSON string representation of the object
print(TopNews200ResponseTopNewsInnerNewsInner.to_json())

# convert the object into a dict
top_news200_response_top_news_inner_news_inner_dict = top_news200_response_top_news_inner_news_inner_instance.to_dict()
# create an instance of TopNews200ResponseTopNewsInnerNewsInner from a dict
top_news200_response_top_news_inner_news_inner_from_dict = TopNews200ResponseTopNewsInnerNewsInner.from_dict(top_news200_response_top_news_inner_news_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


