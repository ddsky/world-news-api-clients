# SearchNewsSources200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **int** |  | [optional] 
**sources** | [**List[SearchNewsSources200ResponseSourcesInner]**](SearchNewsSources200ResponseSourcesInner.md) |  | [optional] 

## Example

```python
from worldnewsapi.models.search_news_sources200_response import SearchNewsSources200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNewsSources200Response from a JSON string
search_news_sources200_response_instance = SearchNewsSources200Response.from_json(json)
# print the JSON string representation of the object
print(SearchNewsSources200Response.to_json())

# convert the object into a dict
search_news_sources200_response_dict = search_news_sources200_response_instance.to_dict()
# create an instance of SearchNewsSources200Response from a dict
search_news_sources200_response_from_dict = SearchNewsSources200Response.from_dict(search_news_sources200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


