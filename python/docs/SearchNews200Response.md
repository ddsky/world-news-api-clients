# SearchNews200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**available** | **int** |  | [optional] 
**news** | [**List[SearchNews200ResponseNewsInner]**](SearchNews200ResponseNewsInner.md) |  | [optional] 

## Example

```python
from worldnewsapi.models.search_news200_response import SearchNews200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNews200Response from a JSON string
search_news200_response_instance = SearchNews200Response.from_json(json)
# print the JSON string representation of the object
print(SearchNews200Response.to_json())

# convert the object into a dict
search_news200_response_dict = search_news200_response_instance.to_dict()
# create an instance of SearchNews200Response from a dict
search_news200_response_from_dict = SearchNews200Response.from_dict(search_news200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


