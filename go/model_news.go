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

// News A news entry.
type News struct {
	Id *int32 `json:"id,omitempty"`
	Title *string `json:"title,omitempty"`
	Text *string `json:"text,omitempty"`
	Summary *string `json:"summary,omitempty"`
	Url *string `json:"url,omitempty"`
	Image *string `json:"image,omitempty"`
	Author *string `json:"author,omitempty"`
	Language *string `json:"language,omitempty"`
	SourceCountry *string `json:"source_country,omitempty"`
	Sentiment *float32 `json:"sentiment,omitempty"`
}

// NewNews instantiates a new News object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewNews() *News {
	this := News{}
	return &this
}

// NewNewsWithDefaults instantiates a new News object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewNewsWithDefaults() *News {
	this := News{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *News) GetId() int32 {
	if o == nil || o.Id == nil {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetIdOk() (*int32, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *News) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *News) SetId(v int32) {
	o.Id = &v
}

// GetTitle returns the Title field value if set, zero value otherwise.
func (o *News) GetTitle() string {
	if o == nil || o.Title == nil {
		var ret string
		return ret
	}
	return *o.Title
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetTitleOk() (*string, bool) {
	if o == nil || o.Title == nil {
		return nil, false
	}
	return o.Title, true
}

// HasTitle returns a boolean if a field has been set.
func (o *News) HasTitle() bool {
	if o != nil && o.Title != nil {
		return true
	}

	return false
}

// SetTitle gets a reference to the given string and assigns it to the Title field.
func (o *News) SetTitle(v string) {
	o.Title = &v
}

// GetText returns the Text field value if set, zero value otherwise.
func (o *News) GetText() string {
	if o == nil || o.Text == nil {
		var ret string
		return ret
	}
	return *o.Text
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetTextOk() (*string, bool) {
	if o == nil || o.Text == nil {
		return nil, false
	}
	return o.Text, true
}

// HasText returns a boolean if a field has been set.
func (o *News) HasText() bool {
	if o != nil && o.Text != nil {
		return true
	}

	return false
}

// SetText gets a reference to the given string and assigns it to the Text field.
func (o *News) SetText(v string) {
	o.Text = &v
}

// GetSummary returns the Summary field value if set, zero value otherwise.
func (o *News) GetSummary() string {
	if o == nil || o.Summary == nil {
		var ret string
		return ret
	}
	return *o.Summary
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetSummaryOk() (*string, bool) {
	if o == nil || o.Summary == nil {
		return nil, false
	}
	return o.Summary, true
}

// HasSummary returns a boolean if a field has been set.
func (o *News) HasSummary() bool {
	if o != nil && o.Summary != nil {
		return true
	}

	return false
}

// SetSummary gets a reference to the given string and assigns it to the Summary field.
func (o *News) SetSummary(v string) {
	o.Summary = &v
}

// GetUrl returns the Url field value if set, zero value otherwise.
func (o *News) GetUrl() string {
	if o == nil || o.Url == nil {
		var ret string
		return ret
	}
	return *o.Url
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetUrlOk() (*string, bool) {
	if o == nil || o.Url == nil {
		return nil, false
	}
	return o.Url, true
}

// HasUrl returns a boolean if a field has been set.
func (o *News) HasUrl() bool {
	if o != nil && o.Url != nil {
		return true
	}

	return false
}

// SetUrl gets a reference to the given string and assigns it to the Url field.
func (o *News) SetUrl(v string) {
	o.Url = &v
}

// GetImage returns the Image field value if set, zero value otherwise.
func (o *News) GetImage() string {
	if o == nil || o.Image == nil {
		var ret string
		return ret
	}
	return *o.Image
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetImageOk() (*string, bool) {
	if o == nil || o.Image == nil {
		return nil, false
	}
	return o.Image, true
}

// HasImage returns a boolean if a field has been set.
func (o *News) HasImage() bool {
	if o != nil && o.Image != nil {
		return true
	}

	return false
}

// SetImage gets a reference to the given string and assigns it to the Image field.
func (o *News) SetImage(v string) {
	o.Image = &v
}

// GetAuthor returns the Author field value if set, zero value otherwise.
func (o *News) GetAuthor() string {
	if o == nil || o.Author == nil {
		var ret string
		return ret
	}
	return *o.Author
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetAuthorOk() (*string, bool) {
	if o == nil || o.Author == nil {
		return nil, false
	}
	return o.Author, true
}

// HasAuthor returns a boolean if a field has been set.
func (o *News) HasAuthor() bool {
	if o != nil && o.Author != nil {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given string and assigns it to the Author field.
func (o *News) SetAuthor(v string) {
	o.Author = &v
}

// GetLanguage returns the Language field value if set, zero value otherwise.
func (o *News) GetLanguage() string {
	if o == nil || o.Language == nil {
		var ret string
		return ret
	}
	return *o.Language
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetLanguageOk() (*string, bool) {
	if o == nil || o.Language == nil {
		return nil, false
	}
	return o.Language, true
}

// HasLanguage returns a boolean if a field has been set.
func (o *News) HasLanguage() bool {
	if o != nil && o.Language != nil {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given string and assigns it to the Language field.
func (o *News) SetLanguage(v string) {
	o.Language = &v
}

// GetSourceCountry returns the SourceCountry field value if set, zero value otherwise.
func (o *News) GetSourceCountry() string {
	if o == nil || o.SourceCountry == nil {
		var ret string
		return ret
	}
	return *o.SourceCountry
}

// GetSourceCountryOk returns a tuple with the SourceCountry field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetSourceCountryOk() (*string, bool) {
	if o == nil || o.SourceCountry == nil {
		return nil, false
	}
	return o.SourceCountry, true
}

// HasSourceCountry returns a boolean if a field has been set.
func (o *News) HasSourceCountry() bool {
	if o != nil && o.SourceCountry != nil {
		return true
	}

	return false
}

// SetSourceCountry gets a reference to the given string and assigns it to the SourceCountry field.
func (o *News) SetSourceCountry(v string) {
	o.SourceCountry = &v
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise.
func (o *News) GetSentiment() float32 {
	if o == nil || o.Sentiment == nil {
		var ret float32
		return ret
	}
	return *o.Sentiment
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *News) GetSentimentOk() (*float32, bool) {
	if o == nil || o.Sentiment == nil {
		return nil, false
	}
	return o.Sentiment, true
}

// HasSentiment returns a boolean if a field has been set.
func (o *News) HasSentiment() bool {
	if o != nil && o.Sentiment != nil {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given float32 and assigns it to the Sentiment field.
func (o *News) SetSentiment(v float32) {
	o.Sentiment = &v
}

func (o News) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Title != nil {
		toSerialize["title"] = o.Title
	}
	if o.Text != nil {
		toSerialize["text"] = o.Text
	}
	if o.Summary != nil {
		toSerialize["summary"] = o.Summary
	}
	if o.Url != nil {
		toSerialize["url"] = o.Url
	}
	if o.Image != nil {
		toSerialize["image"] = o.Image
	}
	if o.Author != nil {
		toSerialize["author"] = o.Author
	}
	if o.Language != nil {
		toSerialize["language"] = o.Language
	}
	if o.SourceCountry != nil {
		toSerialize["source_country"] = o.SourceCountry
	}
	if o.Sentiment != nil {
		toSerialize["sentiment"] = o.Sentiment
	}
	return json.Marshal(toSerialize)
}

type NullableNews struct {
	value *News
	isSet bool
}

func (v NullableNews) Get() *News {
	return v.value
}

func (v *NullableNews) Set(val *News) {
	v.value = val
	v.isSet = true
}

func (v NullableNews) IsSet() bool {
	return v.isSet
}

func (v *NullableNews) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableNews(val *News) *NullableNews {
	return &NullableNews{value: val, isSet: true}
}

func (v NullableNews) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableNews) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


