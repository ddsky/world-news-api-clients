/*
World News API

The world's news wrapped into a single API.

API version: 2.0.0
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package worldnewsapi

import (
	"encoding/json"
)

// checks if the GetGeoCoordinates200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetGeoCoordinates200Response{}

// GetGeoCoordinates200Response struct for GetGeoCoordinates200Response
type GetGeoCoordinates200Response struct {
	Latitude *float32 `json:"latitude,omitempty"`
	Longitude *float32 `json:"longitude,omitempty"`
	City NullableString `json:"city,omitempty"`
}

// NewGetGeoCoordinates200Response instantiates a new GetGeoCoordinates200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetGeoCoordinates200Response() *GetGeoCoordinates200Response {
	this := GetGeoCoordinates200Response{}
	return &this
}

// NewGetGeoCoordinates200ResponseWithDefaults instantiates a new GetGeoCoordinates200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetGeoCoordinates200ResponseWithDefaults() *GetGeoCoordinates200Response {
	this := GetGeoCoordinates200Response{}
	return &this
}

// GetLatitude returns the Latitude field value if set, zero value otherwise.
func (o *GetGeoCoordinates200Response) GetLatitude() float32 {
	if o == nil || IsNil(o.Latitude) {
		var ret float32
		return ret
	}
	return *o.Latitude
}

// GetLatitudeOk returns a tuple with the Latitude field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetGeoCoordinates200Response) GetLatitudeOk() (*float32, bool) {
	if o == nil || IsNil(o.Latitude) {
		return nil, false
	}
	return o.Latitude, true
}

// HasLatitude returns a boolean if a field has been set.
func (o *GetGeoCoordinates200Response) HasLatitude() bool {
	if o != nil && !IsNil(o.Latitude) {
		return true
	}

	return false
}

// SetLatitude gets a reference to the given float32 and assigns it to the Latitude field.
func (o *GetGeoCoordinates200Response) SetLatitude(v float32) {
	o.Latitude = &v
}

// GetLongitude returns the Longitude field value if set, zero value otherwise.
func (o *GetGeoCoordinates200Response) GetLongitude() float32 {
	if o == nil || IsNil(o.Longitude) {
		var ret float32
		return ret
	}
	return *o.Longitude
}

// GetLongitudeOk returns a tuple with the Longitude field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetGeoCoordinates200Response) GetLongitudeOk() (*float32, bool) {
	if o == nil || IsNil(o.Longitude) {
		return nil, false
	}
	return o.Longitude, true
}

// HasLongitude returns a boolean if a field has been set.
func (o *GetGeoCoordinates200Response) HasLongitude() bool {
	if o != nil && !IsNil(o.Longitude) {
		return true
	}

	return false
}

// SetLongitude gets a reference to the given float32 and assigns it to the Longitude field.
func (o *GetGeoCoordinates200Response) SetLongitude(v float32) {
	o.Longitude = &v
}

// GetCity returns the City field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *GetGeoCoordinates200Response) GetCity() string {
	if o == nil || IsNil(o.City.Get()) {
		var ret string
		return ret
	}
	return *o.City.Get()
}

// GetCityOk returns a tuple with the City field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *GetGeoCoordinates200Response) GetCityOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.City.Get(), o.City.IsSet()
}

// HasCity returns a boolean if a field has been set.
func (o *GetGeoCoordinates200Response) HasCity() bool {
	if o != nil && o.City.IsSet() {
		return true
	}

	return false
}

// SetCity gets a reference to the given NullableString and assigns it to the City field.
func (o *GetGeoCoordinates200Response) SetCity(v string) {
	o.City.Set(&v)
}
// SetCityNil sets the value for City to be an explicit nil
func (o *GetGeoCoordinates200Response) SetCityNil() {
	o.City.Set(nil)
}

// UnsetCity ensures that no value is present for City, not even an explicit nil
func (o *GetGeoCoordinates200Response) UnsetCity() {
	o.City.Unset()
}

func (o GetGeoCoordinates200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetGeoCoordinates200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Latitude) {
		toSerialize["latitude"] = o.Latitude
	}
	if !IsNil(o.Longitude) {
		toSerialize["longitude"] = o.Longitude
	}
	if o.City.IsSet() {
		toSerialize["city"] = o.City.Get()
	}
	return toSerialize, nil
}

type NullableGetGeoCoordinates200Response struct {
	value *GetGeoCoordinates200Response
	isSet bool
}

func (v NullableGetGeoCoordinates200Response) Get() *GetGeoCoordinates200Response {
	return v.value
}

func (v *NullableGetGeoCoordinates200Response) Set(val *GetGeoCoordinates200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetGeoCoordinates200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetGeoCoordinates200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetGeoCoordinates200Response(val *GetGeoCoordinates200Response) *NullableGetGeoCoordinates200Response {
	return &NullableGetGeoCoordinates200Response{value: val, isSet: true}
}

func (v NullableGetGeoCoordinates200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetGeoCoordinates200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


