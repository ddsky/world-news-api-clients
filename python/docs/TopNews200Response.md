# TopNews200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**top_news** | [**List[TopNews200ResponseTopNewsInner]**](TopNews200ResponseTopNewsInner.md) |  | [optional] 
**language** | **str** |  | [optional] 
**country** | **str** |  | [optional] 

## Example

```python
from worldnewsapi.models.top_news200_response import TopNews200Response

# TODO update the JSON string below
json = "{}"
# create an instance of TopNews200Response from a JSON string
top_news200_response_instance = TopNews200Response.from_json(json)
# print the JSON string representation of the object
print(TopNews200Response.to_json())

# convert the object into a dict
top_news200_response_dict = top_news200_response_instance.to_dict()
# create an instance of TopNews200Response from a dict
top_news200_response_from_dict = TopNews200Response.from_dict(top_news200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


