/*
World News API

The world's news wrapped into a single API.

API version: 1.3.2
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package worldnewsapi

import (
	"encoding/json"
)

// checks if the RetrieveNewspaperFrontPage200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveNewspaperFrontPage200Response{}

// RetrieveNewspaperFrontPage200Response struct for RetrieveNewspaperFrontPage200Response
type RetrieveNewspaperFrontPage200Response struct {
	FrontPage *RetrieveNewspaperFrontPage200ResponseFrontPage `json:"front_page,omitempty"`
}

// NewRetrieveNewspaperFrontPage200Response instantiates a new RetrieveNewspaperFrontPage200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveNewspaperFrontPage200Response() *RetrieveNewspaperFrontPage200Response {
	this := RetrieveNewspaperFrontPage200Response{}
	return &this
}

// NewRetrieveNewspaperFrontPage200ResponseWithDefaults instantiates a new RetrieveNewspaperFrontPage200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveNewspaperFrontPage200ResponseWithDefaults() *RetrieveNewspaperFrontPage200Response {
	this := RetrieveNewspaperFrontPage200Response{}
	return &this
}

// GetFrontPage returns the FrontPage field value if set, zero value otherwise.
func (o *RetrieveNewspaperFrontPage200Response) GetFrontPage() RetrieveNewspaperFrontPage200ResponseFrontPage {
	if o == nil || IsNil(o.FrontPage) {
		var ret RetrieveNewspaperFrontPage200ResponseFrontPage
		return ret
	}
	return *o.FrontPage
}

// GetFrontPageOk returns a tuple with the FrontPage field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveNewspaperFrontPage200Response) GetFrontPageOk() (*RetrieveNewspaperFrontPage200ResponseFrontPage, bool) {
	if o == nil || IsNil(o.FrontPage) {
		return nil, false
	}
	return o.FrontPage, true
}

// HasFrontPage returns a boolean if a field has been set.
func (o *RetrieveNewspaperFrontPage200Response) HasFrontPage() bool {
	if o != nil && !IsNil(o.FrontPage) {
		return true
	}

	return false
}

// SetFrontPage gets a reference to the given RetrieveNewspaperFrontPage200ResponseFrontPage and assigns it to the FrontPage field.
func (o *RetrieveNewspaperFrontPage200Response) SetFrontPage(v RetrieveNewspaperFrontPage200ResponseFrontPage) {
	o.FrontPage = &v
}

func (o RetrieveNewspaperFrontPage200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveNewspaperFrontPage200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.FrontPage) {
		toSerialize["front_page"] = o.FrontPage
	}
	return toSerialize, nil
}

type NullableRetrieveNewspaperFrontPage200Response struct {
	value *RetrieveNewspaperFrontPage200Response
	isSet bool
}

func (v NullableRetrieveNewspaperFrontPage200Response) Get() *RetrieveNewspaperFrontPage200Response {
	return v.value
}

func (v *NullableRetrieveNewspaperFrontPage200Response) Set(val *RetrieveNewspaperFrontPage200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveNewspaperFrontPage200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveNewspaperFrontPage200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveNewspaperFrontPage200Response(val *RetrieveNewspaperFrontPage200Response) *NullableRetrieveNewspaperFrontPage200Response {
	return &NullableRetrieveNewspaperFrontPage200Response{value: val, isSet: true}
}

func (v NullableRetrieveNewspaperFrontPage200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveNewspaperFrontPage200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

