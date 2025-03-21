/*
World News API

The world's news wrapped into a single API.

API version: 2.2.0
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package worldnewsapi

import (
	"encoding/json"
)

// checks if the RetrieveNewsArticlesByIds200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveNewsArticlesByIds200Response{}

// RetrieveNewsArticlesByIds200Response struct for RetrieveNewsArticlesByIds200Response
type RetrieveNewsArticlesByIds200Response struct {
	News []RetrieveNewsArticlesByIds200ResponseNewsInner `json:"news,omitempty"`
}

// NewRetrieveNewsArticlesByIds200Response instantiates a new RetrieveNewsArticlesByIds200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveNewsArticlesByIds200Response() *RetrieveNewsArticlesByIds200Response {
	this := RetrieveNewsArticlesByIds200Response{}
	return &this
}

// NewRetrieveNewsArticlesByIds200ResponseWithDefaults instantiates a new RetrieveNewsArticlesByIds200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveNewsArticlesByIds200ResponseWithDefaults() *RetrieveNewsArticlesByIds200Response {
	this := RetrieveNewsArticlesByIds200Response{}
	return &this
}

// GetNews returns the News field value if set, zero value otherwise.
func (o *RetrieveNewsArticlesByIds200Response) GetNews() []RetrieveNewsArticlesByIds200ResponseNewsInner {
	if o == nil || IsNil(o.News) {
		var ret []RetrieveNewsArticlesByIds200ResponseNewsInner
		return ret
	}
	return o.News
}

// GetNewsOk returns a tuple with the News field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveNewsArticlesByIds200Response) GetNewsOk() ([]RetrieveNewsArticlesByIds200ResponseNewsInner, bool) {
	if o == nil || IsNil(o.News) {
		return nil, false
	}
	return o.News, true
}

// HasNews returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200Response) HasNews() bool {
	if o != nil && !IsNil(o.News) {
		return true
	}

	return false
}

// SetNews gets a reference to the given []RetrieveNewsArticlesByIds200ResponseNewsInner and assigns it to the News field.
func (o *RetrieveNewsArticlesByIds200Response) SetNews(v []RetrieveNewsArticlesByIds200ResponseNewsInner) {
	o.News = v
}

func (o RetrieveNewsArticlesByIds200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveNewsArticlesByIds200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.News) {
		toSerialize["news"] = o.News
	}
	return toSerialize, nil
}

type NullableRetrieveNewsArticlesByIds200Response struct {
	value *RetrieveNewsArticlesByIds200Response
	isSet bool
}

func (v NullableRetrieveNewsArticlesByIds200Response) Get() *RetrieveNewsArticlesByIds200Response {
	return v.value
}

func (v *NullableRetrieveNewsArticlesByIds200Response) Set(val *RetrieveNewsArticlesByIds200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveNewsArticlesByIds200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveNewsArticlesByIds200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveNewsArticlesByIds200Response(val *RetrieveNewsArticlesByIds200Response) *NullableRetrieveNewsArticlesByIds200Response {
	return &NullableRetrieveNewsArticlesByIds200Response{value: val, isSet: true}
}

func (v NullableRetrieveNewsArticlesByIds200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveNewsArticlesByIds200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


