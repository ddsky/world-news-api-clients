# SearchNews200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Available** | Pointer to **int32** |  | [optional] 
**News** | Pointer to [**[]SearchNews200ResponseNewsInner**](SearchNews200ResponseNewsInner.md) |  | [optional] 

## Methods

### NewSearchNews200Response

`func NewSearchNews200Response() *SearchNews200Response`

NewSearchNews200Response instantiates a new SearchNews200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchNews200ResponseWithDefaults

`func NewSearchNews200ResponseWithDefaults() *SearchNews200Response`

NewSearchNews200ResponseWithDefaults instantiates a new SearchNews200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchNews200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchNews200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchNews200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchNews200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetNumber

`func (o *SearchNews200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchNews200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchNews200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchNews200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetAvailable

`func (o *SearchNews200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchNews200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchNews200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *SearchNews200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetNews

`func (o *SearchNews200Response) GetNews() []SearchNews200ResponseNewsInner`

GetNews returns the News field if non-nil, zero value otherwise.

### GetNewsOk

`func (o *SearchNews200Response) GetNewsOk() (*[]SearchNews200ResponseNewsInner, bool)`

GetNewsOk returns a tuple with the News field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNews

`func (o *SearchNews200Response) SetNews(v []SearchNews200ResponseNewsInner)`

SetNews sets News field to given value.

### HasNews

`func (o *SearchNews200Response) HasNews() bool`

HasNews returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


