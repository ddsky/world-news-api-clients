# SearchNewsSources200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Available** | Pointer to **int32** |  | [optional] 
**Sources** | Pointer to [**[]SearchNewsSources200ResponseSourcesInner**](SearchNewsSources200ResponseSourcesInner.md) |  | [optional] 

## Methods

### NewSearchNewsSources200Response

`func NewSearchNewsSources200Response() *SearchNewsSources200Response`

NewSearchNewsSources200Response instantiates a new SearchNewsSources200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchNewsSources200ResponseWithDefaults

`func NewSearchNewsSources200ResponseWithDefaults() *SearchNewsSources200Response`

NewSearchNewsSources200ResponseWithDefaults instantiates a new SearchNewsSources200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAvailable

`func (o *SearchNewsSources200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchNewsSources200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchNewsSources200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *SearchNewsSources200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetSources

`func (o *SearchNewsSources200Response) GetSources() []SearchNewsSources200ResponseSourcesInner`

GetSources returns the Sources field if non-nil, zero value otherwise.

### GetSourcesOk

`func (o *SearchNewsSources200Response) GetSourcesOk() (*[]SearchNewsSources200ResponseSourcesInner, bool)`

GetSourcesOk returns a tuple with the Sources field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSources

`func (o *SearchNewsSources200Response) SetSources(v []SearchNewsSources200ResponseSourcesInner)`

SetSources sets Sources field to given value.

### HasSources

`func (o *SearchNewsSources200Response) HasSources() bool`

HasSources returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


