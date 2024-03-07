# GeoCoordinatesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Latitude** | **float32** |  | 
**Longitude** | **float32** |  | 
**City** | Pointer to **string** |  | [optional] 

## Methods

### NewGeoCoordinatesResponse

`func NewGeoCoordinatesResponse(latitude float32, longitude float32, ) *GeoCoordinatesResponse`

NewGeoCoordinatesResponse instantiates a new GeoCoordinatesResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGeoCoordinatesResponseWithDefaults

`func NewGeoCoordinatesResponseWithDefaults() *GeoCoordinatesResponse`

NewGeoCoordinatesResponseWithDefaults instantiates a new GeoCoordinatesResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLatitude

`func (o *GeoCoordinatesResponse) GetLatitude() float32`

GetLatitude returns the Latitude field if non-nil, zero value otherwise.

### GetLatitudeOk

`func (o *GeoCoordinatesResponse) GetLatitudeOk() (*float32, bool)`

GetLatitudeOk returns a tuple with the Latitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatitude

`func (o *GeoCoordinatesResponse) SetLatitude(v float32)`

SetLatitude sets Latitude field to given value.


### GetLongitude

`func (o *GeoCoordinatesResponse) GetLongitude() float32`

GetLongitude returns the Longitude field if non-nil, zero value otherwise.

### GetLongitudeOk

`func (o *GeoCoordinatesResponse) GetLongitudeOk() (*float32, bool)`

GetLongitudeOk returns a tuple with the Longitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLongitude

`func (o *GeoCoordinatesResponse) SetLongitude(v float32)`

SetLongitude sets Longitude field to given value.


### GetCity

`func (o *GeoCoordinatesResponse) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *GeoCoordinatesResponse) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *GeoCoordinatesResponse) SetCity(v string)`

SetCity sets City field to given value.

### HasCity

`func (o *GeoCoordinatesResponse) HasCity() bool`

HasCity returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


