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

// checks if the TopNews200ResponseTopNewsInnerNewsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &TopNews200ResponseTopNewsInnerNewsInner{}

// TopNews200ResponseTopNewsInnerNewsInner struct for TopNews200ResponseTopNewsInnerNewsInner
type TopNews200ResponseTopNewsInnerNewsInner struct {
	Summary NullableString `json:"summary,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Author NullableString `json:"author,omitempty"`
	Id *int32 `json:"id,omitempty"`
	Text NullableString `json:"text,omitempty"`
	Title NullableString `json:"title,omitempty"`
	PublishDate NullableString `json:"publish_date,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Authors []*string `json:"authors,omitempty"`
}

// NewTopNews200ResponseTopNewsInnerNewsInner instantiates a new TopNews200ResponseTopNewsInnerNewsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTopNews200ResponseTopNewsInnerNewsInner() *TopNews200ResponseTopNewsInnerNewsInner {
	this := TopNews200ResponseTopNewsInnerNewsInner{}
	return &this
}

// NewTopNews200ResponseTopNewsInnerNewsInnerWithDefaults instantiates a new TopNews200ResponseTopNewsInnerNewsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTopNews200ResponseTopNewsInnerNewsInnerWithDefaults() *TopNews200ResponseTopNewsInnerNewsInner {
	this := TopNews200ResponseTopNewsInnerNewsInner{}
	return &this
}

// GetSummary returns the Summary field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetSummary() string {
	if o == nil || IsNil(o.Summary.Get()) {
		var ret string
		return ret
	}
	return *o.Summary.Get()
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetSummaryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Summary.Get(), o.Summary.IsSet()
}

// HasSummary returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasSummary() bool {
	if o != nil && o.Summary.IsSet() {
		return true
	}

	return false
}

// SetSummary gets a reference to the given NullableString and assigns it to the Summary field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetSummary(v string) {
	o.Summary.Set(&v)
}
// SetSummaryNil sets the value for Summary to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetSummaryNil() {
	o.Summary.Set(nil)
}

// UnsetSummary ensures that no value is present for Summary, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetSummary() {
	o.Summary.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetImage() {
	o.Image.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetAuthor() {
	o.Author.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetId(v int32) {
	o.Id = &v
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetText() {
	o.Text.Unset()
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetTitle() {
	o.Title.Unset()
}

// GetPublishDate returns the PublishDate field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetPublishDate() string {
	if o == nil || IsNil(o.PublishDate.Get()) {
		var ret string
		return ret
	}
	return *o.PublishDate.Get()
}

// GetPublishDateOk returns a tuple with the PublishDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetPublishDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PublishDate.Get(), o.PublishDate.IsSet()
}

// HasPublishDate returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasPublishDate() bool {
	if o != nil && o.PublishDate.IsSet() {
		return true
	}

	return false
}

// SetPublishDate gets a reference to the given NullableString and assigns it to the PublishDate field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetPublishDate(v string) {
	o.PublishDate.Set(&v)
}
// SetPublishDateNil sets the value for PublishDate to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetPublishDateNil() {
	o.PublishDate.Set(nil)
}

// UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetPublishDate() {
	o.PublishDate.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *TopNews200ResponseTopNewsInnerNewsInner) UnsetUrl() {
	o.Url.Unset()
}

// GetAuthors returns the Authors field value if set, zero value otherwise.
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetAuthors() []*string {
	if o == nil || IsNil(o.Authors) {
		var ret []*string
		return ret
	}
	return o.Authors
}

// GetAuthorsOk returns a tuple with the Authors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) GetAuthorsOk() ([]*string, bool) {
	if o == nil || IsNil(o.Authors) {
		return nil, false
	}
	return o.Authors, true
}

// HasAuthors returns a boolean if a field has been set.
func (o *TopNews200ResponseTopNewsInnerNewsInner) HasAuthors() bool {
	if o != nil && !IsNil(o.Authors) {
		return true
	}

	return false
}

// SetAuthors gets a reference to the given []*string and assigns it to the Authors field.
func (o *TopNews200ResponseTopNewsInnerNewsInner) SetAuthors(v []*string) {
	o.Authors = v
}

func (o TopNews200ResponseTopNewsInnerNewsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o TopNews200ResponseTopNewsInnerNewsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Summary.IsSet() {
		toSerialize["summary"] = o.Summary.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if o.Text.IsSet() {
		toSerialize["text"] = o.Text.Get()
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.PublishDate.IsSet() {
		toSerialize["publish_date"] = o.PublishDate.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if !IsNil(o.Authors) {
		toSerialize["authors"] = o.Authors
	}
	return toSerialize, nil
}

type NullableTopNews200ResponseTopNewsInnerNewsInner struct {
	value *TopNews200ResponseTopNewsInnerNewsInner
	isSet bool
}

func (v NullableTopNews200ResponseTopNewsInnerNewsInner) Get() *TopNews200ResponseTopNewsInnerNewsInner {
	return v.value
}

func (v *NullableTopNews200ResponseTopNewsInnerNewsInner) Set(val *TopNews200ResponseTopNewsInnerNewsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableTopNews200ResponseTopNewsInnerNewsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableTopNews200ResponseTopNewsInnerNewsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTopNews200ResponseTopNewsInnerNewsInner(val *TopNews200ResponseTopNewsInnerNewsInner) *NullableTopNews200ResponseTopNewsInnerNewsInner {
	return &NullableTopNews200ResponseTopNewsInnerNewsInner{value: val, isSet: true}
}

func (v NullableTopNews200ResponseTopNewsInnerNewsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTopNews200ResponseTopNewsInnerNewsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


