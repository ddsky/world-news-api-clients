/*
World News API

The world's news wrapped into a single API.

API version: 1.3.1
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package worldnewsapi

import (
	"encoding/json"
)

// checks if the NewspaperFrontPages200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &NewspaperFrontPages200Response{}

// NewspaperFrontPages200Response struct for NewspaperFrontPages200Response
type NewspaperFrontPages200Response struct {
	FrontPage *NewspaperFrontPages200ResponseFrontPage `json:"front_page,omitempty"`
}

// NewNewspaperFrontPages200Response instantiates a new NewspaperFrontPages200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewNewspaperFrontPages200Response() *NewspaperFrontPages200Response {
	this := NewspaperFrontPages200Response{}
	return &this
}

// NewNewspaperFrontPages200ResponseWithDefaults instantiates a new NewspaperFrontPages200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewNewspaperFrontPages200ResponseWithDefaults() *NewspaperFrontPages200Response {
	this := NewspaperFrontPages200Response{}
	return &this
}

// GetFrontPage returns the FrontPage field value if set, zero value otherwise.
func (o *NewspaperFrontPages200Response) GetFrontPage() NewspaperFrontPages200ResponseFrontPage {
	if o == nil || IsNil(o.FrontPage) {
		var ret NewspaperFrontPages200ResponseFrontPage
		return ret
	}
	return *o.FrontPage
}

// GetFrontPageOk returns a tuple with the FrontPage field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *NewspaperFrontPages200Response) GetFrontPageOk() (*NewspaperFrontPages200ResponseFrontPage, bool) {
	if o == nil || IsNil(o.FrontPage) {
		return nil, false
	}
	return o.FrontPage, true
}

// HasFrontPage returns a boolean if a field has been set.
func (o *NewspaperFrontPages200Response) HasFrontPage() bool {
	if o != nil && !IsNil(o.FrontPage) {
		return true
	}

	return false
}

// SetFrontPage gets a reference to the given NewspaperFrontPages200ResponseFrontPage and assigns it to the FrontPage field.
func (o *NewspaperFrontPages200Response) SetFrontPage(v NewspaperFrontPages200ResponseFrontPage) {
	o.FrontPage = &v
}

func (o NewspaperFrontPages200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o NewspaperFrontPages200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.FrontPage) {
		toSerialize["front_page"] = o.FrontPage
	}
	return toSerialize, nil
}

type NullableNewspaperFrontPages200Response struct {
	value *NewspaperFrontPages200Response
	isSet bool
}

func (v NullableNewspaperFrontPages200Response) Get() *NewspaperFrontPages200Response {
	return v.value
}

func (v *NullableNewspaperFrontPages200Response) Set(val *NewspaperFrontPages200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableNewspaperFrontPages200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableNewspaperFrontPages200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableNewspaperFrontPages200Response(val *NewspaperFrontPages200Response) *NullableNewspaperFrontPages200Response {
	return &NullableNewspaperFrontPages200Response{value: val, isSet: true}
}

func (v NullableNewspaperFrontPages200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableNewspaperFrontPages200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


