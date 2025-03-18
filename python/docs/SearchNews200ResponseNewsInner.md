# SearchNews200ResponseNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 
**language** | **str** |  | [optional] 
**video** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**text** | **str** |  | [optional] 
**category** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from worldnewsapi.models.search_news200_response_news_inner import SearchNews200ResponseNewsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNews200ResponseNewsInner from a JSON string
search_news200_response_news_inner_instance = SearchNews200ResponseNewsInner.from_json(json)
# print the JSON string representation of the object
print(SearchNews200ResponseNewsInner.to_json())

# convert the object into a dict
search_news200_response_news_inner_dict = search_news200_response_news_inner_instance.to_dict()
# create an instance of SearchNews200ResponseNewsInner from a dict
search_news200_response_news_inner_from_dict = SearchNews200ResponseNewsInner.from_dict(search_news200_response_news_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


