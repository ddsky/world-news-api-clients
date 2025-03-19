# SearchNewsSources200ResponseSourcesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**language** | **str** |  | [optional] 

## Example

```python
from worldnewsapi.models.search_news_sources200_response_sources_inner import SearchNewsSources200ResponseSourcesInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNewsSources200ResponseSourcesInner from a JSON string
search_news_sources200_response_sources_inner_instance = SearchNewsSources200ResponseSourcesInner.from_json(json)
# print the JSON string representation of the object
print(SearchNewsSources200ResponseSourcesInner.to_json())

# convert the object into a dict
search_news_sources200_response_sources_inner_dict = search_news_sources200_response_sources_inner_instance.to_dict()
# create an instance of SearchNewsSources200ResponseSourcesInner from a dict
search_news_sources200_response_sources_inner_from_dict = SearchNewsSources200ResponseSourcesInner.from_dict(search_news_sources200_response_sources_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


