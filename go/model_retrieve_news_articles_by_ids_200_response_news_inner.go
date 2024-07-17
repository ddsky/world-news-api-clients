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

// checks if the RetrieveNewsArticlesByIds200ResponseNewsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveNewsArticlesByIds200ResponseNewsInner{}

// RetrieveNewsArticlesByIds200ResponseNewsInner struct for RetrieveNewsArticlesByIds200ResponseNewsInner
type RetrieveNewsArticlesByIds200ResponseNewsInner struct {
	Summary NullableString `json:"summary,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Sentiment *float32 `json:"sentiment,omitempty"`
	Language NullableString `json:"language,omitempty"`
	Title NullableString `json:"title,omitempty"`
	Url NullableString `json:"url,omitempty"`
	SourceCountry NullableString `json:"source_country,omitempty"`
	Id *int32 `json:"id,omitempty"`
	Text NullableString `json:"text,omitempty"`
	Category NullableString `json:"category,omitempty"`
	PublishDate NullableString `json:"publish_date,omitempty"`
	Authors []*string `json:"authors,omitempty"`
}

// NewRetrieveNewsArticlesByIds200ResponseNewsInner instantiates a new RetrieveNewsArticlesByIds200ResponseNewsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveNewsArticlesByIds200ResponseNewsInner() *RetrieveNewsArticlesByIds200ResponseNewsInner {
	this := RetrieveNewsArticlesByIds200ResponseNewsInner{}
	return &this
}

// NewRetrieveNewsArticlesByIds200ResponseNewsInnerWithDefaults instantiates a new RetrieveNewsArticlesByIds200ResponseNewsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveNewsArticlesByIds200ResponseNewsInnerWithDefaults() *RetrieveNewsArticlesByIds200ResponseNewsInner {
	this := RetrieveNewsArticlesByIds200ResponseNewsInner{}
	return &this
}

// GetSummary returns the Summary field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSummary() string {
	if o == nil || IsNil(o.Summary.Get()) {
		var ret string
		return ret
	}
	return *o.Summary.Get()
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSummaryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Summary.Get(), o.Summary.IsSet()
}

// HasSummary returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasSummary() bool {
	if o != nil && o.Summary.IsSet() {
		return true
	}

	return false
}

// SetSummary gets a reference to the given NullableString and assigns it to the Summary field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetSummary(v string) {
	o.Summary.Set(&v)
}
// SetSummaryNil sets the value for Summary to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetSummaryNil() {
	o.Summary.Set(nil)
}

// UnsetSummary ensures that no value is present for Summary, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetSummary() {
	o.Summary.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetImage() {
	o.Image.Unset()
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSentiment() float32 {
	if o == nil || IsNil(o.Sentiment) {
		var ret float32
		return ret
	}
	return *o.Sentiment
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSentimentOk() (*float32, bool) {
	if o == nil || IsNil(o.Sentiment) {
		return nil, false
	}
	return o.Sentiment, true
}

// HasSentiment returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasSentiment() bool {
	if o != nil && !IsNil(o.Sentiment) {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given float32 and assigns it to the Sentiment field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetSentiment(v float32) {
	o.Sentiment = &v
}

// GetLanguage returns the Language field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetLanguage() string {
	if o == nil || IsNil(o.Language.Get()) {
		var ret string
		return ret
	}
	return *o.Language.Get()
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetLanguageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Language.Get(), o.Language.IsSet()
}

// HasLanguage returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasLanguage() bool {
	if o != nil && o.Language.IsSet() {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given NullableString and assigns it to the Language field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetLanguage(v string) {
	o.Language.Set(&v)
}
// SetLanguageNil sets the value for Language to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetLanguageNil() {
	o.Language.Set(nil)
}

// UnsetLanguage ensures that no value is present for Language, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetLanguage() {
	o.Language.Unset()
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetTitle() {
	o.Title.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetUrl() {
	o.Url.Unset()
}

// GetSourceCountry returns the SourceCountry field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSourceCountry() string {
	if o == nil || IsNil(o.SourceCountry.Get()) {
		var ret string
		return ret
	}
	return *o.SourceCountry.Get()
}

// GetSourceCountryOk returns a tuple with the SourceCountry field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetSourceCountryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceCountry.Get(), o.SourceCountry.IsSet()
}

// HasSourceCountry returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasSourceCountry() bool {
	if o != nil && o.SourceCountry.IsSet() {
		return true
	}

	return false
}

// SetSourceCountry gets a reference to the given NullableString and assigns it to the SourceCountry field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetSourceCountry(v string) {
	o.SourceCountry.Set(&v)
}
// SetSourceCountryNil sets the value for SourceCountry to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetSourceCountryNil() {
	o.SourceCountry.Set(nil)
}

// UnsetSourceCountry ensures that no value is present for SourceCountry, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetSourceCountry() {
	o.SourceCountry.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetId(v int32) {
	o.Id = &v
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetText() {
	o.Text.Unset()
}

// GetCategory returns the Category field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetCategory() string {
	if o == nil || IsNil(o.Category.Get()) {
		var ret string
		return ret
	}
	return *o.Category.Get()
}

// GetCategoryOk returns a tuple with the Category field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetCategoryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Category.Get(), o.Category.IsSet()
}

// HasCategory returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasCategory() bool {
	if o != nil && o.Category.IsSet() {
		return true
	}

	return false
}

// SetCategory gets a reference to the given NullableString and assigns it to the Category field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetCategory(v string) {
	o.Category.Set(&v)
}
// SetCategoryNil sets the value for Category to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetCategoryNil() {
	o.Category.Set(nil)
}

// UnsetCategory ensures that no value is present for Category, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetCategory() {
	o.Category.Unset()
}

// GetPublishDate returns the PublishDate field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetPublishDate() string {
	if o == nil || IsNil(o.PublishDate.Get()) {
		var ret string
		return ret
	}
	return *o.PublishDate.Get()
}

// GetPublishDateOk returns a tuple with the PublishDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetPublishDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PublishDate.Get(), o.PublishDate.IsSet()
}

// HasPublishDate returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasPublishDate() bool {
	if o != nil && o.PublishDate.IsSet() {
		return true
	}

	return false
}

// SetPublishDate gets a reference to the given NullableString and assigns it to the PublishDate field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetPublishDate(v string) {
	o.PublishDate.Set(&v)
}
// SetPublishDateNil sets the value for PublishDate to be an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetPublishDateNil() {
	o.PublishDate.Set(nil)
}

// UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) UnsetPublishDate() {
	o.PublishDate.Unset()
}

// GetAuthors returns the Authors field value if set, zero value otherwise.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetAuthors() []*string {
	if o == nil || IsNil(o.Authors) {
		var ret []*string
		return ret
	}
	return o.Authors
}

// GetAuthorsOk returns a tuple with the Authors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) GetAuthorsOk() ([]*string, bool) {
	if o == nil || IsNil(o.Authors) {
		return nil, false
	}
	return o.Authors, true
}

// HasAuthors returns a boolean if a field has been set.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) HasAuthors() bool {
	if o != nil && !IsNil(o.Authors) {
		return true
	}

	return false
}

// SetAuthors gets a reference to the given []*string and assigns it to the Authors field.
func (o *RetrieveNewsArticlesByIds200ResponseNewsInner) SetAuthors(v []*string) {
	o.Authors = v
}

func (o RetrieveNewsArticlesByIds200ResponseNewsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveNewsArticlesByIds200ResponseNewsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Summary.IsSet() {
		toSerialize["summary"] = o.Summary.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Sentiment) {
		toSerialize["sentiment"] = o.Sentiment
	}
	if o.Language.IsSet() {
		toSerialize["language"] = o.Language.Get()
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if o.SourceCountry.IsSet() {
		toSerialize["source_country"] = o.SourceCountry.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if o.Text.IsSet() {
		toSerialize["text"] = o.Text.Get()
	}
	if o.Category.IsSet() {
		toSerialize["category"] = o.Category.Get()
	}
	if o.PublishDate.IsSet() {
		toSerialize["publish_date"] = o.PublishDate.Get()
	}
	if !IsNil(o.Authors) {
		toSerialize["authors"] = o.Authors
	}
	return toSerialize, nil
}

type NullableRetrieveNewsArticlesByIds200ResponseNewsInner struct {
	value *RetrieveNewsArticlesByIds200ResponseNewsInner
	isSet bool
}

func (v NullableRetrieveNewsArticlesByIds200ResponseNewsInner) Get() *RetrieveNewsArticlesByIds200ResponseNewsInner {
	return v.value
}

func (v *NullableRetrieveNewsArticlesByIds200ResponseNewsInner) Set(val *RetrieveNewsArticlesByIds200ResponseNewsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveNewsArticlesByIds200ResponseNewsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveNewsArticlesByIds200ResponseNewsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveNewsArticlesByIds200ResponseNewsInner(val *RetrieveNewsArticlesByIds200ResponseNewsInner) *NullableRetrieveNewsArticlesByIds200ResponseNewsInner {
	return &NullableRetrieveNewsArticlesByIds200ResponseNewsInner{value: val, isSet: true}
}

func (v NullableRetrieveNewsArticlesByIds200ResponseNewsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveNewsArticlesByIds200ResponseNewsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


