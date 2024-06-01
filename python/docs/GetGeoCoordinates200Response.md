# GetGeoCoordinates200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**latitude** | **float** |  | [optional] 
**longitude** | **float** |  | [optional] 
**city** | **str** |  | [optional] 

## Example

```python
from worldnewsapi.models.get_geo_coordinates200_response import GetGeoCoordinates200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetGeoCoordinates200Response from a JSON string
get_geo_coordinates200_response_instance = GetGeoCoordinates200Response.from_json(json)
# print the JSON string representation of the object
print(GetGeoCoordinates200Response.to_json())

# convert the object into a dict
get_geo_coordinates200_response_dict = get_geo_coordinates200_response_instance.to_dict()
# create an instance of GetGeoCoordinates200Response from a dict
get_geo_coordinates200_response_from_dict = GetGeoCoordinates200Response.from_dict(get_geo_coordinates200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


