# RetrieveNewsArticlesByIds200ResponseNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 
**language** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**text** | **str** |  | [optional] 
**category** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from worldnewsapi.models.retrieve_news_articles_by_ids200_response_news_inner import RetrieveNewsArticlesByIds200ResponseNewsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveNewsArticlesByIds200ResponseNewsInner from a JSON string
retrieve_news_articles_by_ids200_response_news_inner_instance = RetrieveNewsArticlesByIds200ResponseNewsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveNewsArticlesByIds200ResponseNewsInner.to_json())

# convert the object into a dict
retrieve_news_articles_by_ids200_response_news_inner_dict = retrieve_news_articles_by_ids200_response_news_inner_instance.to_dict()
# create an instance of RetrieveNewsArticlesByIds200ResponseNewsInner from a dict
retrieve_news_articles_by_ids200_response_news_inner_from_dict = RetrieveNewsArticlesByIds200ResponseNewsInner.from_dict(retrieve_news_articles_by_ids200_response_news_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


