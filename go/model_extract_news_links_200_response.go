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

// checks if the ExtractNewsLinks200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNewsLinks200Response{}

// ExtractNewsLinks200Response struct for ExtractNewsLinks200Response
type ExtractNewsLinks200Response struct {
	NewsLinks []*string `json:"news_links,omitempty"`
}

// NewExtractNewsLinks200Response instantiates a new ExtractNewsLinks200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNewsLinks200Response() *ExtractNewsLinks200Response {
	this := ExtractNewsLinks200Response{}
	return &this
}

// NewExtractNewsLinks200ResponseWithDefaults instantiates a new ExtractNewsLinks200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNewsLinks200ResponseWithDefaults() *ExtractNewsLinks200Response {
	this := ExtractNewsLinks200Response{}
	return &this
}

// GetNewsLinks returns the NewsLinks field value if set, zero value otherwise.
func (o *ExtractNewsLinks200Response) GetNewsLinks() []*string {
	if o == nil || IsNil(o.NewsLinks) {
		var ret []*string
		return ret
	}
	return o.NewsLinks
}

// GetNewsLinksOk returns a tuple with the NewsLinks field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsLinks200Response) GetNewsLinksOk() ([]*string, bool) {
	if o == nil || IsNil(o.NewsLinks) {
		return nil, false
	}
	return o.NewsLinks, true
}

// HasNewsLinks returns a boolean if a field has been set.
func (o *ExtractNewsLinks200Response) HasNewsLinks() bool {
	if o != nil && !IsNil(o.NewsLinks) {
		return true
	}

	return false
}

// SetNewsLinks gets a reference to the given []*string and assigns it to the NewsLinks field.
func (o *ExtractNewsLinks200Response) SetNewsLinks(v []*string) {
	o.NewsLinks = v
}

func (o ExtractNewsLinks200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNewsLinks200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.NewsLinks) {
		toSerialize["news_links"] = o.NewsLinks
	}
	return toSerialize, nil
}

type NullableExtractNewsLinks200Response struct {
	value *ExtractNewsLinks200Response
	isSet bool
}

func (v NullableExtractNewsLinks200Response) Get() *ExtractNewsLinks200Response {
	return v.value
}

func (v *NullableExtractNewsLinks200Response) Set(val *ExtractNewsLinks200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNewsLinks200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNewsLinks200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNewsLinks200Response(val *ExtractNewsLinks200Response) *NullableExtractNewsLinks200Response {
	return &NullableExtractNewsLinks200Response{value: val, isSet: true}
}

func (v NullableExtractNewsLinks200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNewsLinks200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


