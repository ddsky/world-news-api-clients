/*
World News API

The world's news wrapped into a single API.

API version: 1.0
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// InlineResponse200 struct for InlineResponse200
type InlineResponse200 struct {
	Offset int32 `json:"offset"`
	Number int32 `json:"number"`
	Available int32 `json:"available"`
	News []InlineResponse200News `json:"news"`
}

// NewInlineResponse200 instantiates a new InlineResponse200 object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewInlineResponse200(offset int32, number int32, available int32, news []InlineResponse200News) *InlineResponse200 {
	this := InlineResponse200{}
	this.Offset = offset
	this.Number = number
	this.Available = available
	this.News = news
	return &this
}

// NewInlineResponse200WithDefaults instantiates a new InlineResponse200 object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewInlineResponse200WithDefaults() *InlineResponse200 {
	this := InlineResponse200{}
	return &this
}

// GetOffset returns the Offset field value
func (o *InlineResponse200) GetOffset() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value
// and a boolean to check if the value has been set.
func (o *InlineResponse200) GetOffsetOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Offset, true
}

// SetOffset sets field value
func (o *InlineResponse200) SetOffset(v int32) {
	o.Offset = v
}

// GetNumber returns the Number field value
func (o *InlineResponse200) GetNumber() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Number
}

// GetNumberOk returns a tuple with the Number field value
// and a boolean to check if the value has been set.
func (o *InlineResponse200) GetNumberOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Number, true
}

// SetNumber sets field value
func (o *InlineResponse200) SetNumber(v int32) {
	o.Number = v
}

// GetAvailable returns the Available field value
func (o *InlineResponse200) GetAvailable() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Available
}

// GetAvailableOk returns a tuple with the Available field value
// and a boolean to check if the value has been set.
func (o *InlineResponse200) GetAvailableOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Available, true
}

// SetAvailable sets field value
func (o *InlineResponse200) SetAvailable(v int32) {
	o.Available = v
}

// GetNews returns the News field value
func (o *InlineResponse200) GetNews() []InlineResponse200News {
	if o == nil {
		var ret []InlineResponse200News
		return ret
	}

	return o.News
}

// GetNewsOk returns a tuple with the News field value
// and a boolean to check if the value has been set.
func (o *InlineResponse200) GetNewsOk() ([]InlineResponse200News, bool) {
	if o == nil  {
		return nil, false
	}
	return o.News, true
}

// SetNews sets field value
func (o *InlineResponse200) SetNews(v []InlineResponse200News) {
	o.News = v
}

func (o InlineResponse200) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["offset"] = o.Offset
	}
	if true {
		toSerialize["number"] = o.Number
	}
	if true {
		toSerialize["available"] = o.Available
	}
	if true {
		toSerialize["news"] = o.News
	}
	return json.Marshal(toSerialize)
}

type NullableInlineResponse200 struct {
	value *InlineResponse200
	isSet bool
}

func (v NullableInlineResponse200) Get() *InlineResponse200 {
	return v.value
}

func (v *NullableInlineResponse200) Set(val *InlineResponse200) {
	v.value = val
	v.isSet = true
}

func (v NullableInlineResponse200) IsSet() bool {
	return v.isSet
}

func (v *NullableInlineResponse200) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableInlineResponse200(val *InlineResponse200) *NullableInlineResponse200 {
	return &NullableInlineResponse200{value: val, isSet: true}
}

func (v NullableInlineResponse200) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableInlineResponse200) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


