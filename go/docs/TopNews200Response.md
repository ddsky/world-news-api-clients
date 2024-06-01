# TopNews200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TopNews** | Pointer to [**[]TopNews200ResponseTopNewsInner**](TopNews200ResponseTopNewsInner.md) |  | [optional] 
**Language** | Pointer to **NullableString** |  | [optional] 
**Country** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewTopNews200Response

`func NewTopNews200Response() *TopNews200Response`

NewTopNews200Response instantiates a new TopNews200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTopNews200ResponseWithDefaults

`func NewTopNews200ResponseWithDefaults() *TopNews200Response`

NewTopNews200ResponseWithDefaults instantiates a new TopNews200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTopNews

`func (o *TopNews200Response) GetTopNews() []TopNews200ResponseTopNewsInner`

GetTopNews returns the TopNews field if non-nil, zero value otherwise.

### GetTopNewsOk

`func (o *TopNews200Response) GetTopNewsOk() (*[]TopNews200ResponseTopNewsInner, bool)`

GetTopNewsOk returns a tuple with the TopNews field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopNews

`func (o *TopNews200Response) SetTopNews(v []TopNews200ResponseTopNewsInner)`

SetTopNews sets TopNews field to given value.

### HasTopNews

`func (o *TopNews200Response) HasTopNews() bool`

HasTopNews returns a boolean if a field has been set.

### GetLanguage

`func (o *TopNews200Response) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *TopNews200Response) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *TopNews200Response) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *TopNews200Response) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### SetLanguageNil

`func (o *TopNews200Response) SetLanguageNil(b bool)`

 SetLanguageNil sets the value for Language to be an explicit nil

### UnsetLanguage
`func (o *TopNews200Response) UnsetLanguage()`

UnsetLanguage ensures that no value is present for Language, not even an explicit nil
### GetCountry

`func (o *TopNews200Response) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *TopNews200Response) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *TopNews200Response) SetCountry(v string)`

SetCountry sets Country field to given value.

### HasCountry

`func (o *TopNews200Response) HasCountry() bool`

HasCountry returns a boolean if a field has been set.

### SetCountryNil

`func (o *TopNews200Response) SetCountryNil(b bool)`

 SetCountryNil sets the value for Country to be an explicit nil

### UnsetCountry
`func (o *TopNews200Response) UnsetCountry()`

UnsetCountry ensures that no value is present for Country, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


