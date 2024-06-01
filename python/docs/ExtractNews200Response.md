# ExtractNews200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**text** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**language** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 

## Example

```python
from worldnewsapi.models.extract_news200_response import ExtractNews200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractNews200Response from a JSON string
extract_news200_response_instance = ExtractNews200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractNews200Response.to_json())

# convert the object into a dict
extract_news200_response_dict = extract_news200_response_instance.to_dict()
# create an instance of ExtractNews200Response from a dict
extract_news200_response_from_dict = ExtractNews200Response.from_dict(extract_news200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


