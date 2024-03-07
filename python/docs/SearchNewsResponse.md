# SearchNewsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | 
**number** | **int** |  | 
**available** | **int** |  | 
**news** | [**List[NewsArticle]**](NewsArticle.md) |  | 

## Example

```python
from worldnewsapi.models.search_news_response import SearchNewsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNewsResponse from a JSON string
search_news_response_instance = SearchNewsResponse.from_json(json)
# print the JSON string representation of the object
print SearchNewsResponse.to_json()

# convert the object into a dict
search_news_response_dict = search_news_response_instance.to_dict()
# create an instance of SearchNewsResponse from a dict
search_news_response_form_dict = search_news_response.from_dict(search_news_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


