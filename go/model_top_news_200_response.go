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

// checks if the TopNews200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &TopNews200Response{}

// TopNews200Response struct for TopNews200Response
type TopNews200Response struct {
	TopNews []TopNews200ResponseTopNewsInner `json:"top_news,omitempty"`
	Language NullableString `json:"language,omitempty"`
	Country NullableString `json:"country,omitempty"`
}

// NewTopNews200Response instantiates a new TopNews200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTopNews200Response() *TopNews200Response {
	this := TopNews200Response{}
	return &this
}

// NewTopNews200ResponseWithDefaults instantiates a new TopNews200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTopNews200ResponseWithDefaults() *TopNews200Response {
	this := TopNews200Response{}
	return &this
}

// GetTopNews returns the TopNews field value if set, zero value otherwise.
func (o *TopNews200Response) GetTopNews() []TopNews200ResponseTopNewsInner {
	if o == nil || IsNil(o.TopNews) {
		var ret []TopNews200ResponseTopNewsInner
		return ret
	}
	return o.TopNews
}

// GetTopNewsOk returns a tuple with the TopNews field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TopNews200Response) GetTopNewsOk() ([]TopNews200ResponseTopNewsInner, bool) {
	if o == nil || IsNil(o.TopNews) {
		return nil, false
	}
	return o.TopNews, true
}

// HasTopNews returns a boolean if a field has been set.
func (o *TopNews200Response) HasTopNews() bool {
	if o != nil && !IsNil(o.TopNews) {
		return true
	}

	return false
}

// SetTopNews gets a reference to the given []TopNews200ResponseTopNewsInner and assigns it to the TopNews field.
func (o *TopNews200Response) SetTopNews(v []TopNews200ResponseTopNewsInner) {
	o.TopNews = v
}

// GetLanguage returns the Language field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200Response) GetLanguage() string {
	if o == nil || IsNil(o.Language.Get()) {
		var ret string
		return ret
	}
	return *o.Language.Get()
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200Response) GetLanguageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Language.Get(), o.Language.IsSet()
}

// HasLanguage returns a boolean if a field has been set.
func (o *TopNews200Response) HasLanguage() bool {
	if o != nil && o.Language.IsSet() {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given NullableString and assigns it to the Language field.
func (o *TopNews200Response) SetLanguage(v string) {
	o.Language.Set(&v)
}
// SetLanguageNil sets the value for Language to be an explicit nil
func (o *TopNews200Response) SetLanguageNil() {
	o.Language.Set(nil)
}

// UnsetLanguage ensures that no value is present for Language, not even an explicit nil
func (o *TopNews200Response) UnsetLanguage() {
	o.Language.Unset()
}

// GetCountry returns the Country field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200Response) GetCountry() string {
	if o == nil || IsNil(o.Country.Get()) {
		var ret string
		return ret
	}
	return *o.Country.Get()
}

// GetCountryOk returns a tuple with the Country field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200Response) GetCountryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Country.Get(), o.Country.IsSet()
}

// HasCountry returns a boolean if a field has been set.
func (o *TopNews200Response) HasCountry() bool {
	if o != nil && o.Country.IsSet() {
		return true
	}

	return false
}

// SetCountry gets a reference to the given NullableString and assigns it to the Country field.
func (o *TopNews200Response) SetCountry(v string) {
	o.Country.Set(&v)
}
// SetCountryNil sets the value for Country to be an explicit nil
func (o *TopNews200Response) SetCountryNil() {
	o.Country.Set(nil)
}

// UnsetCountry ensures that no value is present for Country, not even an explicit nil
func (o *TopNews200Response) UnsetCountry() {
	o.Country.Unset()
}

func (o TopNews200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o TopNews200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.TopNews) {
		toSerialize["top_news"] = o.TopNews
	}
	if o.Language.IsSet() {
		toSerialize["language"] = o.Language.Get()
	}
	if o.Country.IsSet() {
		toSerialize["country"] = o.Country.Get()
	}
	return toSerialize, nil
}

type NullableTopNews200Response struct {
	value *TopNews200Response
	isSet bool
}

func (v NullableTopNews200Response) Get() *TopNews200Response {
	return v.value
}

func (v *NullableTopNews200Response) Set(val *TopNews200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableTopNews200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableTopNews200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTopNews200Response(val *TopNews200Response) *NullableTopNews200Response {
	return &NullableTopNews200Response{value: val, isSet: true}
}

func (v NullableTopNews200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTopNews200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


