# GetGeoCoordinates200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Latitude** | Pointer to **float32** |  | [optional] 
**Longitude** | Pointer to **float32** |  | [optional] 
**City** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewGetGeoCoordinates200Response

`func NewGetGeoCoordinates200Response() *GetGeoCoordinates200Response`

NewGetGeoCoordinates200Response instantiates a new GetGeoCoordinates200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetGeoCoordinates200ResponseWithDefaults

`func NewGetGeoCoordinates200ResponseWithDefaults() *GetGeoCoordinates200Response`

NewGetGeoCoordinates200ResponseWithDefaults instantiates a new GetGeoCoordinates200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLatitude

`func (o *GetGeoCoordinates200Response) GetLatitude() float32`

GetLatitude returns the Latitude field if non-nil, zero value otherwise.

### GetLatitudeOk

`func (o *GetGeoCoordinates200Response) GetLatitudeOk() (*float32, bool)`

GetLatitudeOk returns a tuple with the Latitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatitude

`func (o *GetGeoCoordinates200Response) SetLatitude(v float32)`

SetLatitude sets Latitude field to given value.

### HasLatitude

`func (o *GetGeoCoordinates200Response) HasLatitude() bool`

HasLatitude returns a boolean if a field has been set.

### GetLongitude

`func (o *GetGeoCoordinates200Response) GetLongitude() float32`

GetLongitude returns the Longitude field if non-nil, zero value otherwise.

### GetLongitudeOk

`func (o *GetGeoCoordinates200Response) GetLongitudeOk() (*float32, bool)`

GetLongitudeOk returns a tuple with the Longitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLongitude

`func (o *GetGeoCoordinates200Response) SetLongitude(v float32)`

SetLongitude sets Longitude field to given value.

### HasLongitude

`func (o *GetGeoCoordinates200Response) HasLongitude() bool`

HasLongitude returns a boolean if a field has been set.

### GetCity

`func (o *GetGeoCoordinates200Response) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *GetGeoCoordinates200Response) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *GetGeoCoordinates200Response) SetCity(v string)`

SetCity sets City field to given value.

### HasCity

`func (o *GetGeoCoordinates200Response) HasCity() bool`

HasCity returns a boolean if a field has been set.

### SetCityNil

`func (o *GetGeoCoordinates200Response) SetCityNil(b bool)`

 SetCityNil sets the value for City to be an explicit nil

### UnsetCity
`func (o *GetGeoCoordinates200Response) UnsetCity()`

UnsetCity ensures that no value is present for City, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


