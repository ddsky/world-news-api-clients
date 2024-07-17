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

// checks if the ExtractNews200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNews200Response{}

// ExtractNews200Response struct for ExtractNews200Response
type ExtractNews200Response struct {
	Title NullableString `json:"title,omitempty"`
	Text NullableString `json:"text,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Images []ExtractNews200ResponseImagesInner `json:"images,omitempty"`
	Video NullableString `json:"video,omitempty"`
	Videos []ExtractNews200ResponseVideosInner `json:"videos,omitempty"`
	PublishDate NullableString `json:"publish_date,omitempty"`
	Author NullableString `json:"author,omitempty"`
	Authors []*string `json:"authors,omitempty"`
	Language NullableString `json:"language,omitempty"`
}

// NewExtractNews200Response instantiates a new ExtractNews200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNews200Response() *ExtractNews200Response {
	this := ExtractNews200Response{}
	return &this
}

// NewExtractNews200ResponseWithDefaults instantiates a new ExtractNews200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNews200ResponseWithDefaults() *ExtractNews200Response {
	this := ExtractNews200Response{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *ExtractNews200Response) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *ExtractNews200Response) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *ExtractNews200Response) UnsetTitle() {
	o.Title.Unset()
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *ExtractNews200Response) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *ExtractNews200Response) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *ExtractNews200Response) UnsetText() {
	o.Text.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *ExtractNews200Response) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *ExtractNews200Response) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *ExtractNews200Response) UnsetUrl() {
	o.Url.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *ExtractNews200Response) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *ExtractNews200Response) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *ExtractNews200Response) UnsetImage() {
	o.Image.Unset()
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *ExtractNews200Response) GetImages() []ExtractNews200ResponseImagesInner {
	if o == nil || IsNil(o.Images) {
		var ret []ExtractNews200ResponseImagesInner
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200Response) GetImagesOk() ([]ExtractNews200ResponseImagesInner, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []ExtractNews200ResponseImagesInner and assigns it to the Images field.
func (o *ExtractNews200Response) SetImages(v []ExtractNews200ResponseImagesInner) {
	o.Images = v
}

// GetVideo returns the Video field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetVideo() string {
	if o == nil || IsNil(o.Video.Get()) {
		var ret string
		return ret
	}
	return *o.Video.Get()
}

// GetVideoOk returns a tuple with the Video field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetVideoOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Video.Get(), o.Video.IsSet()
}

// HasVideo returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasVideo() bool {
	if o != nil && o.Video.IsSet() {
		return true
	}

	return false
}

// SetVideo gets a reference to the given NullableString and assigns it to the Video field.
func (o *ExtractNews200Response) SetVideo(v string) {
	o.Video.Set(&v)
}
// SetVideoNil sets the value for Video to be an explicit nil
func (o *ExtractNews200Response) SetVideoNil() {
	o.Video.Set(nil)
}

// UnsetVideo ensures that no value is present for Video, not even an explicit nil
func (o *ExtractNews200Response) UnsetVideo() {
	o.Video.Unset()
}

// GetVideos returns the Videos field value if set, zero value otherwise.
func (o *ExtractNews200Response) GetVideos() []ExtractNews200ResponseVideosInner {
	if o == nil || IsNil(o.Videos) {
		var ret []ExtractNews200ResponseVideosInner
		return ret
	}
	return o.Videos
}

// GetVideosOk returns a tuple with the Videos field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200Response) GetVideosOk() ([]ExtractNews200ResponseVideosInner, bool) {
	if o == nil || IsNil(o.Videos) {
		return nil, false
	}
	return o.Videos, true
}

// HasVideos returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasVideos() bool {
	if o != nil && !IsNil(o.Videos) {
		return true
	}

	return false
}

// SetVideos gets a reference to the given []ExtractNews200ResponseVideosInner and assigns it to the Videos field.
func (o *ExtractNews200Response) SetVideos(v []ExtractNews200ResponseVideosInner) {
	o.Videos = v
}

// GetPublishDate returns the PublishDate field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetPublishDate() string {
	if o == nil || IsNil(o.PublishDate.Get()) {
		var ret string
		return ret
	}
	return *o.PublishDate.Get()
}

// GetPublishDateOk returns a tuple with the PublishDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetPublishDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PublishDate.Get(), o.PublishDate.IsSet()
}

// HasPublishDate returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasPublishDate() bool {
	if o != nil && o.PublishDate.IsSet() {
		return true
	}

	return false
}

// SetPublishDate gets a reference to the given NullableString and assigns it to the PublishDate field.
func (o *ExtractNews200Response) SetPublishDate(v string) {
	o.PublishDate.Set(&v)
}
// SetPublishDateNil sets the value for PublishDate to be an explicit nil
func (o *ExtractNews200Response) SetPublishDateNil() {
	o.PublishDate.Set(nil)
}

// UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
func (o *ExtractNews200Response) UnsetPublishDate() {
	o.PublishDate.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *ExtractNews200Response) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *ExtractNews200Response) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *ExtractNews200Response) UnsetAuthor() {
	o.Author.Unset()
}

// GetAuthors returns the Authors field value if set, zero value otherwise.
func (o *ExtractNews200Response) GetAuthors() []*string {
	if o == nil || IsNil(o.Authors) {
		var ret []*string
		return ret
	}
	return o.Authors
}

// GetAuthorsOk returns a tuple with the Authors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200Response) GetAuthorsOk() ([]*string, bool) {
	if o == nil || IsNil(o.Authors) {
		return nil, false
	}
	return o.Authors, true
}

// HasAuthors returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasAuthors() bool {
	if o != nil && !IsNil(o.Authors) {
		return true
	}

	return false
}

// SetAuthors gets a reference to the given []*string and assigns it to the Authors field.
func (o *ExtractNews200Response) SetAuthors(v []*string) {
	o.Authors = v
}

// GetLanguage returns the Language field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetLanguage() string {
	if o == nil || IsNil(o.Language.Get()) {
		var ret string
		return ret
	}
	return *o.Language.Get()
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetLanguageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Language.Get(), o.Language.IsSet()
}

// HasLanguage returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasLanguage() bool {
	if o != nil && o.Language.IsSet() {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given NullableString and assigns it to the Language field.
func (o *ExtractNews200Response) SetLanguage(v string) {
	o.Language.Set(&v)
}
// SetLanguageNil sets the value for Language to be an explicit nil
func (o *ExtractNews200Response) SetLanguageNil() {
	o.Language.Set(nil)
}

// UnsetLanguage ensures that no value is present for Language, not even an explicit nil
func (o *ExtractNews200Response) UnsetLanguage() {
	o.Language.Unset()
}

func (o ExtractNews200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNews200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Text.IsSet() {
		toSerialize["text"] = o.Text.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	if o.Video.IsSet() {
		toSerialize["video"] = o.Video.Get()
	}
	if !IsNil(o.Videos) {
		toSerialize["videos"] = o.Videos
	}
	if o.PublishDate.IsSet() {
		toSerialize["publish_date"] = o.PublishDate.Get()
	}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if !IsNil(o.Authors) {
		toSerialize["authors"] = o.Authors
	}
	if o.Language.IsSet() {
		toSerialize["language"] = o.Language.Get()
	}
	return toSerialize, nil
}

type NullableExtractNews200Response struct {
	value *ExtractNews200Response
	isSet bool
}

func (v NullableExtractNews200Response) Get() *ExtractNews200Response {
	return v.value
}

func (v *NullableExtractNews200Response) Set(val *ExtractNews200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNews200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNews200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNews200Response(val *ExtractNews200Response) *NullableExtractNews200Response {
	return &NullableExtractNews200Response{value: val, isSet: true}
}

func (v NullableExtractNews200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNews200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


