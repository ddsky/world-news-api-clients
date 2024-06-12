# RetrieveNewsArticlesByIds200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**news** | [**List[RetrieveNewsArticlesByIds200ResponseNewsInner]**](RetrieveNewsArticlesByIds200ResponseNewsInner.md) |  | [optional] 

## Example

```python
from worldnewsapi.models.retrieve_news_articles_by_ids200_response import RetrieveNewsArticlesByIds200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveNewsArticlesByIds200Response from a JSON string
retrieve_news_articles_by_ids200_response_instance = RetrieveNewsArticlesByIds200Response.from_json(json)
# print the JSON string representation of the object
print(RetrieveNewsArticlesByIds200Response.to_json())

# convert the object into a dict
retrieve_news_articles_by_ids200_response_dict = retrieve_news_articles_by_ids200_response_instance.to_dict()
# create an instance of RetrieveNewsArticlesByIds200Response from a dict
retrieve_news_articles_by_ids200_response_from_dict = RetrieveNewsArticlesByIds200Response.from_dict(retrieve_news_articles_by_ids200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


