# SearchNewsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **int32** |  | 
**Number** | **int32** |  | 
**Available** | **int32** |  | 
**News** | [**[]NewsArticle**](NewsArticle.md) |  | 

## Methods

### NewSearchNewsResponse

`func NewSearchNewsResponse(offset int32, number int32, available int32, news []NewsArticle, ) *SearchNewsResponse`

NewSearchNewsResponse instantiates a new SearchNewsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchNewsResponseWithDefaults

`func NewSearchNewsResponseWithDefaults() *SearchNewsResponse`

NewSearchNewsResponseWithDefaults instantiates a new SearchNewsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchNewsResponse) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchNewsResponse) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchNewsResponse) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetNumber

`func (o *SearchNewsResponse) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchNewsResponse) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchNewsResponse) SetNumber(v int32)`

SetNumber sets Number field to given value.


### GetAvailable

`func (o *SearchNewsResponse) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchNewsResponse) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchNewsResponse) SetAvailable(v int32)`

SetAvailable sets Available field to given value.


### GetNews

`func (o *SearchNewsResponse) GetNews() []NewsArticle`

GetNews returns the News field if non-nil, zero value otherwise.

### GetNewsOk

`func (o *SearchNewsResponse) GetNewsOk() (*[]NewsArticle, bool)`

GetNewsOk returns a tuple with the News field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNews

`func (o *SearchNewsResponse) SetNews(v []NewsArticle)`

SetNews sets News field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


