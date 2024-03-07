# GeoCoordinatesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**latitude** | **float** |  | 
**longitude** | **float** |  | 
**city** | **str** |  | [optional] 

## Example

```python
from worldnewsapi.models.geo_coordinates_response import GeoCoordinatesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GeoCoordinatesResponse from a JSON string
geo_coordinates_response_instance = GeoCoordinatesResponse.from_json(json)
# print the JSON string representation of the object
print GeoCoordinatesResponse.to_json()

# convert the object into a dict
geo_coordinates_response_dict = geo_coordinates_response_instance.to_dict()
# create an instance of GeoCoordinatesResponse from a dict
geo_coordinates_response_form_dict = geo_coordinates_response.from_dict(geo_coordinates_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


