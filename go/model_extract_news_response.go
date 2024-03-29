/*
World News API

The world's news wrapped into a single API.

API version: 1.1
Contact: mail@worldnewsapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package worldnewsapi

import (
	"encoding/json"
)

// checks if the ExtractNewsResponse type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNewsResponse{}

// ExtractNewsResponse struct for ExtractNewsResponse
type ExtractNewsResponse struct {
	Title *string `json:"title,omitempty"`
	Text *string `json:"text,omitempty"`
	Url *string `json:"url,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Author *string `json:"author,omitempty"`
	Language *string `json:"language,omitempty"`
	SourceCountry *string `json:"source_country,omitempty"`
	Sentiment *float32 `json:"sentiment,omitempty"`
}

// NewExtractNewsResponse instantiates a new ExtractNewsResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNewsResponse() *ExtractNewsResponse {
	this := ExtractNewsResponse{}
	return &this
}

// NewExtractNewsResponseWithDefaults instantiates a new ExtractNewsResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNewsResponseWithDefaults() *ExtractNewsResponse {
	this := ExtractNewsResponse{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetTitle() string {
	if o == nil || IsNil(o.Title) {
		var ret string
		return ret
	}
	return *o.Title
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetTitleOk() (*string, bool) {
	if o == nil || IsNil(o.Title) {
		return nil, false
	}
	return o.Title, true
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasTitle() bool {
	if o != nil && !IsNil(o.Title) {
		return true
	}

	return false
}

// SetTitle gets a reference to the given string and assigns it to the Title field.
func (o *ExtractNewsResponse) SetTitle(v string) {
	o.Title = &v
}

// GetText returns the Text field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetText() string {
	if o == nil || IsNil(o.Text) {
		var ret string
		return ret
	}
	return *o.Text
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetTextOk() (*string, bool) {
	if o == nil || IsNil(o.Text) {
		return nil, false
	}
	return o.Text, true
}

// HasText returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasText() bool {
	if o != nil && !IsNil(o.Text) {
		return true
	}

	return false
}

// SetText gets a reference to the given string and assigns it to the Text field.
func (o *ExtractNewsResponse) SetText(v string) {
	o.Text = &v
}

// GetUrl returns the Url field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetUrl() string {
	if o == nil || IsNil(o.Url) {
		var ret string
		return ret
	}
	return *o.Url
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetUrlOk() (*string, bool) {
	if o == nil || IsNil(o.Url) {
		return nil, false
	}
	return o.Url, true
}

// HasUrl returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasUrl() bool {
	if o != nil && !IsNil(o.Url) {
		return true
	}

	return false
}

// SetUrl gets a reference to the given string and assigns it to the Url field.
func (o *ExtractNewsResponse) SetUrl(v string) {
	o.Url = &v
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNewsResponse) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNewsResponse) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *ExtractNewsResponse) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *ExtractNewsResponse) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *ExtractNewsResponse) UnsetImage() {
	o.Image.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetAuthor() string {
	if o == nil || IsNil(o.Author) {
		var ret string
		return ret
	}
	return *o.Author
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetAuthorOk() (*string, bool) {
	if o == nil || IsNil(o.Author) {
		return nil, false
	}
	return o.Author, true
}

// HasAuthor returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasAuthor() bool {
	if o != nil && !IsNil(o.Author) {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given string and assigns it to the Author field.
func (o *ExtractNewsResponse) SetAuthor(v string) {
	o.Author = &v
}

// GetLanguage returns the Language field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetLanguage() string {
	if o == nil || IsNil(o.Language) {
		var ret string
		return ret
	}
	return *o.Language
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetLanguageOk() (*string, bool) {
	if o == nil || IsNil(o.Language) {
		return nil, false
	}
	return o.Language, true
}

// HasLanguage returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasLanguage() bool {
	if o != nil && !IsNil(o.Language) {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given string and assigns it to the Language field.
func (o *ExtractNewsResponse) SetLanguage(v string) {
	o.Language = &v
}

// GetSourceCountry returns the SourceCountry field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetSourceCountry() string {
	if o == nil || IsNil(o.SourceCountry) {
		var ret string
		return ret
	}
	return *o.SourceCountry
}

// GetSourceCountryOk returns a tuple with the SourceCountry field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetSourceCountryOk() (*string, bool) {
	if o == nil || IsNil(o.SourceCountry) {
		return nil, false
	}
	return o.SourceCountry, true
}

// HasSourceCountry returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasSourceCountry() bool {
	if o != nil && !IsNil(o.SourceCountry) {
		return true
	}

	return false
}

// SetSourceCountry gets a reference to the given string and assigns it to the SourceCountry field.
func (o *ExtractNewsResponse) SetSourceCountry(v string) {
	o.SourceCountry = &v
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise.
func (o *ExtractNewsResponse) GetSentiment() float32 {
	if o == nil || IsNil(o.Sentiment) {
		var ret float32
		return ret
	}
	return *o.Sentiment
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNewsResponse) GetSentimentOk() (*float32, bool) {
	if o == nil || IsNil(o.Sentiment) {
		return nil, false
	}
	return o.Sentiment, true
}

// HasSentiment returns a boolean if a field has been set.
func (o *ExtractNewsResponse) HasSentiment() bool {
	if o != nil && !IsNil(o.Sentiment) {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given float32 and assigns it to the Sentiment field.
func (o *ExtractNewsResponse) SetSentiment(v float32) {
	o.Sentiment = &v
}

func (o ExtractNewsResponse) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNewsResponse) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Title) {
		toSerialize["title"] = o.Title
	}
	if !IsNil(o.Text) {
		toSerialize["text"] = o.Text
	}
	if !IsNil(o.Url) {
		toSerialize["url"] = o.Url
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Author) {
		toSerialize["author"] = o.Author
	}
	if !IsNil(o.Language) {
		toSerialize["language"] = o.Language
	}
	if !IsNil(o.SourceCountry) {
		toSerialize["source_country"] = o.SourceCountry
	}
	if !IsNil(o.Sentiment) {
		toSerialize["sentiment"] = o.Sentiment
	}
	return toSerialize, nil
}

type NullableExtractNewsResponse struct {
	value *ExtractNewsResponse
	isSet bool
}

func (v NullableExtractNewsResponse) Get() *ExtractNewsResponse {
	return v.value
}

func (v *NullableExtractNewsResponse) Set(val *ExtractNewsResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNewsResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNewsResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNewsResponse(val *ExtractNewsResponse) *NullableExtractNewsResponse {
	return &NullableExtractNewsResponse{value: val, isSet: true}
}

func (v NullableExtractNewsResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNewsResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


