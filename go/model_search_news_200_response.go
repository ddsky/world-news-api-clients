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

// checks if the SearchNews200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchNews200Response{}

// SearchNews200Response struct for SearchNews200Response
type SearchNews200Response struct {
	Offset *int32 `json:"offset,omitempty"`
	Number *int32 `json:"number,omitempty"`
	Available *int32 `json:"available,omitempty"`
	News []SearchNews200ResponseNewsInner `json:"news,omitempty"`
}

// NewSearchNews200Response instantiates a new SearchNews200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchNews200Response() *SearchNews200Response {
	this := SearchNews200Response{}
	return &this
}

// NewSearchNews200ResponseWithDefaults instantiates a new SearchNews200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchNews200ResponseWithDefaults() *SearchNews200Response {
	this := SearchNews200Response{}
	return &this
}

// GetOffset returns the Offset field value if set, zero value otherwise.
func (o *SearchNews200Response) GetOffset() int32 {
	if o == nil || IsNil(o.Offset) {
		var ret int32
		return ret
	}
	return *o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchNews200Response) GetOffsetOk() (*int32, bool) {
	if o == nil || IsNil(o.Offset) {
		return nil, false
	}
	return o.Offset, true
}

// HasOffset returns a boolean if a field has been set.
func (o *SearchNews200Response) HasOffset() bool {
	if o != nil && !IsNil(o.Offset) {
		return true
	}

	return false
}

// SetOffset gets a reference to the given int32 and assigns it to the Offset field.
func (o *SearchNews200Response) SetOffset(v int32) {
	o.Offset = &v
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *SearchNews200Response) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchNews200Response) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *SearchNews200Response) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *SearchNews200Response) SetNumber(v int32) {
	o.Number = &v
}

// GetAvailable returns the Available field value if set, zero value otherwise.
func (o *SearchNews200Response) GetAvailable() int32 {
	if o == nil || IsNil(o.Available) {
		var ret int32
		return ret
	}
	return *o.Available
}

// GetAvailableOk returns a tuple with the Available field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchNews200Response) GetAvailableOk() (*int32, bool) {
	if o == nil || IsNil(o.Available) {
		return nil, false
	}
	return o.Available, true
}

// HasAvailable returns a boolean if a field has been set.
func (o *SearchNews200Response) HasAvailable() bool {
	if o != nil && !IsNil(o.Available) {
		return true
	}

	return false
}

// SetAvailable gets a reference to the given int32 and assigns it to the Available field.
func (o *SearchNews200Response) SetAvailable(v int32) {
	o.Available = &v
}

// GetNews returns the News field value if set, zero value otherwise.
func (o *SearchNews200Response) GetNews() []SearchNews200ResponseNewsInner {
	if o == nil || IsNil(o.News) {
		var ret []SearchNews200ResponseNewsInner
		return ret
	}
	return o.News
}

// GetNewsOk returns a tuple with the News field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchNews200Response) GetNewsOk() ([]SearchNews200ResponseNewsInner, bool) {
	if o == nil || IsNil(o.News) {
		return nil, false
	}
	return o.News, true
}

// HasNews returns a boolean if a field has been set.
func (o *SearchNews200Response) HasNews() bool {
	if o != nil && !IsNil(o.News) {
		return true
	}

	return false
}

// SetNews gets a reference to the given []SearchNews200ResponseNewsInner and assigns it to the News field.
func (o *SearchNews200Response) SetNews(v []SearchNews200ResponseNewsInner) {
	o.News = v
}

func (o SearchNews200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchNews200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Offset) {
		toSerialize["offset"] = o.Offset
	}
	if !IsNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !IsNil(o.Available) {
		toSerialize["available"] = o.Available
	}
	if !IsNil(o.News) {
		toSerialize["news"] = o.News
	}
	return toSerialize, nil
}

type NullableSearchNews200Response struct {
	value *SearchNews200Response
	isSet bool
}

func (v NullableSearchNews200Response) Get() *SearchNews200Response {
	return v.value
}

func (v *NullableSearchNews200Response) Set(val *SearchNews200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchNews200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchNews200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchNews200Response(val *SearchNews200Response) *NullableSearchNews200Response {
	return &NullableSearchNews200Response{value: val, isSet: true}
}

func (v NullableSearchNews200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchNews200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


