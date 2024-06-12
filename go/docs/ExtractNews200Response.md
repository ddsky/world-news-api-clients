# ExtractNews200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | Pointer to **NullableString** |  | [optional] 
**Text** | Pointer to **NullableString** |  | [optional] 
**Url** | Pointer to **NullableString** |  | [optional] 
**Image** | Pointer to **NullableString** |  | [optional] 
**Images** | Pointer to [**[]ExtractNews200ResponseImagesInner**](ExtractNews200ResponseImagesInner.md) |  | [optional] 
**Video** | Pointer to **NullableString** |  | [optional] 
**Videos** | Pointer to [**[]ExtractNews200ResponseVideosInner**](ExtractNews200ResponseVideosInner.md) |  | [optional] 
**PublishDate** | Pointer to **NullableString** |  | [optional] 
**Author** | Pointer to **NullableString** |  | [optional] 
**Authors** | Pointer to **[]string** |  | [optional] 
**Language** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewExtractNews200Response

`func NewExtractNews200Response() *ExtractNews200Response`

NewExtractNews200Response instantiates a new ExtractNews200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractNews200ResponseWithDefaults

`func NewExtractNews200ResponseWithDefaults() *ExtractNews200Response`

NewExtractNews200ResponseWithDefaults instantiates a new ExtractNews200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTitle

`func (o *ExtractNews200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ExtractNews200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ExtractNews200Response) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ExtractNews200Response) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *ExtractNews200Response) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *ExtractNews200Response) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetText

`func (o *ExtractNews200Response) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ExtractNews200Response) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ExtractNews200Response) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ExtractNews200Response) HasText() bool`

HasText returns a boolean if a field has been set.

### SetTextNil

`func (o *ExtractNews200Response) SetTextNil(b bool)`

 SetTextNil sets the value for Text to be an explicit nil

### UnsetText
`func (o *ExtractNews200Response) UnsetText()`

UnsetText ensures that no value is present for Text, not even an explicit nil
### GetUrl

`func (o *ExtractNews200Response) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *ExtractNews200Response) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *ExtractNews200Response) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *ExtractNews200Response) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### SetUrlNil

`func (o *ExtractNews200Response) SetUrlNil(b bool)`

 SetUrlNil sets the value for Url to be an explicit nil

### UnsetUrl
`func (o *ExtractNews200Response) UnsetUrl()`

UnsetUrl ensures that no value is present for Url, not even an explicit nil
### GetImage

`func (o *ExtractNews200Response) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *ExtractNews200Response) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *ExtractNews200Response) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *ExtractNews200Response) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *ExtractNews200Response) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *ExtractNews200Response) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetImages

`func (o *ExtractNews200Response) GetImages() []ExtractNews200ResponseImagesInner`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *ExtractNews200Response) GetImagesOk() (*[]ExtractNews200ResponseImagesInner, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *ExtractNews200Response) SetImages(v []ExtractNews200ResponseImagesInner)`

SetImages sets Images field to given value.

### HasImages

`func (o *ExtractNews200Response) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetVideo

`func (o *ExtractNews200Response) GetVideo() string`

GetVideo returns the Video field if non-nil, zero value otherwise.

### GetVideoOk

`func (o *ExtractNews200Response) GetVideoOk() (*string, bool)`

GetVideoOk returns a tuple with the Video field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideo

`func (o *ExtractNews200Response) SetVideo(v string)`

SetVideo sets Video field to given value.

### HasVideo

`func (o *ExtractNews200Response) HasVideo() bool`

HasVideo returns a boolean if a field has been set.

### SetVideoNil

`func (o *ExtractNews200Response) SetVideoNil(b bool)`

 SetVideoNil sets the value for Video to be an explicit nil

### UnsetVideo
`func (o *ExtractNews200Response) UnsetVideo()`

UnsetVideo ensures that no value is present for Video, not even an explicit nil
### GetVideos

`func (o *ExtractNews200Response) GetVideos() []ExtractNews200ResponseVideosInner`

GetVideos returns the Videos field if non-nil, zero value otherwise.

### GetVideosOk

`func (o *ExtractNews200Response) GetVideosOk() (*[]ExtractNews200ResponseVideosInner, bool)`

GetVideosOk returns a tuple with the Videos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideos

`func (o *ExtractNews200Response) SetVideos(v []ExtractNews200ResponseVideosInner)`

SetVideos sets Videos field to given value.

### HasVideos

`func (o *ExtractNews200Response) HasVideos() bool`

HasVideos returns a boolean if a field has been set.

### GetPublishDate

`func (o *ExtractNews200Response) GetPublishDate() string`

GetPublishDate returns the PublishDate field if non-nil, zero value otherwise.

### GetPublishDateOk

`func (o *ExtractNews200Response) GetPublishDateOk() (*string, bool)`

GetPublishDateOk returns a tuple with the PublishDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishDate

`func (o *ExtractNews200Response) SetPublishDate(v string)`

SetPublishDate sets PublishDate field to given value.

### HasPublishDate

`func (o *ExtractNews200Response) HasPublishDate() bool`

HasPublishDate returns a boolean if a field has been set.

### SetPublishDateNil

`func (o *ExtractNews200Response) SetPublishDateNil(b bool)`

 SetPublishDateNil sets the value for PublishDate to be an explicit nil

### UnsetPublishDate
`func (o *ExtractNews200Response) UnsetPublishDate()`

UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
### GetAuthor

`func (o *ExtractNews200Response) GetAuthor() string`

GetAuthor returns the Author field if non-nil, zero value otherwise.

### GetAuthorOk

`func (o *ExtractNews200Response) GetAuthorOk() (*string, bool)`

GetAuthorOk returns a tuple with the Author field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthor

`func (o *ExtractNews200Response) SetAuthor(v string)`

SetAuthor sets Author field to given value.

### HasAuthor

`func (o *ExtractNews200Response) HasAuthor() bool`

HasAuthor returns a boolean if a field has been set.

### SetAuthorNil

`func (o *ExtractNews200Response) SetAuthorNil(b bool)`

 SetAuthorNil sets the value for Author to be an explicit nil

### UnsetAuthor
`func (o *ExtractNews200Response) UnsetAuthor()`

UnsetAuthor ensures that no value is present for Author, not even an explicit nil
### GetAuthors

`func (o *ExtractNews200Response) GetAuthors() []*string`

GetAuthors returns the Authors field if non-nil, zero value otherwise.

### GetAuthorsOk

`func (o *ExtractNews200Response) GetAuthorsOk() (*[]*string, bool)`

GetAuthorsOk returns a tuple with the Authors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthors

`func (o *ExtractNews200Response) SetAuthors(v []*string)`

SetAuthors sets Authors field to given value.

### HasAuthors

`func (o *ExtractNews200Response) HasAuthors() bool`

HasAuthors returns a boolean if a field has been set.

### GetLanguage

`func (o *ExtractNews200Response) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *ExtractNews200Response) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *ExtractNews200Response) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *ExtractNews200Response) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### SetLanguageNil

`func (o *ExtractNews200Response) SetLanguageNil(b bool)`

 SetLanguageNil sets the value for Language to be an explicit nil

### UnsetLanguage
`func (o *ExtractNews200Response) UnsetLanguage()`

UnsetLanguage ensures that no value is present for Language, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


