# ExtractNewsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**text** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**language** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 

## Example

```python
from worldnewsapi.models.extract_news_response import ExtractNewsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractNewsResponse from a JSON string
extract_news_response_instance = ExtractNewsResponse.from_json(json)
# print the JSON string representation of the object
print ExtractNewsResponse.to_json()

# convert the object into a dict
extract_news_response_dict = extract_news_response_instance.to_dict()
# create an instance of ExtractNewsResponse from a dict
extract_news_response_form_dict = extract_news_response.from_dict(extract_news_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


