# NewsArticle

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Text** | Pointer to **string** |  | [optional] 
**Summary** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Image** | Pointer to **NullableString** |  | [optional] 
**PublishDate** | Pointer to **string** |  | [optional] 
**Author** | Pointer to **string** |  | [optional] 
**Language** | Pointer to **string** |  | [optional] 
**SourceCountry** | Pointer to **string** |  | [optional] 
**Sentiment** | Pointer to **float32** |  | [optional] 

## Methods

### NewNewsArticle

`func NewNewsArticle() *NewsArticle`

NewNewsArticle instantiates a new NewsArticle object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNewsArticleWithDefaults

`func NewNewsArticleWithDefaults() *NewsArticle`

NewNewsArticleWithDefaults instantiates a new NewsArticle object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *NewsArticle) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *NewsArticle) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *NewsArticle) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *NewsArticle) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTitle

`func (o *NewsArticle) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *NewsArticle) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *NewsArticle) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *NewsArticle) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetText

`func (o *NewsArticle) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *NewsArticle) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *NewsArticle) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *NewsArticle) HasText() bool`

HasText returns a boolean if a field has been set.

### GetSummary

`func (o *NewsArticle) GetSummary() string`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *NewsArticle) GetSummaryOk() (*string, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *NewsArticle) SetSummary(v string)`

SetSummary sets Summary field to given value.

### HasSummary

`func (o *NewsArticle) HasSummary() bool`

HasSummary returns a boolean if a field has been set.

### GetUrl

`func (o *NewsArticle) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *NewsArticle) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *NewsArticle) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *NewsArticle) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetImage

`func (o *NewsArticle) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *NewsArticle) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *NewsArticle) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *NewsArticle) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *NewsArticle) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *NewsArticle) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetPublishDate

`func (o *NewsArticle) GetPublishDate() string`

GetPublishDate returns the PublishDate field if non-nil, zero value otherwise.

### GetPublishDateOk

`func (o *NewsArticle) GetPublishDateOk() (*string, bool)`

GetPublishDateOk returns a tuple with the PublishDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishDate

`func (o *NewsArticle) SetPublishDate(v string)`

SetPublishDate sets PublishDate field to given value.

### HasPublishDate

`func (o *NewsArticle) HasPublishDate() bool`

HasPublishDate returns a boolean if a field has been set.

### GetAuthor

`func (o *NewsArticle) GetAuthor() string`

GetAuthor returns the Author field if non-nil, zero value otherwise.

### GetAuthorOk

`func (o *NewsArticle) GetAuthorOk() (*string, bool)`

GetAuthorOk returns a tuple with the Author field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthor

`func (o *NewsArticle) SetAuthor(v string)`

SetAuthor sets Author field to given value.

### HasAuthor

`func (o *NewsArticle) HasAuthor() bool`

HasAuthor returns a boolean if a field has been set.

### GetLanguage

`func (o *NewsArticle) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *NewsArticle) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *NewsArticle) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *NewsArticle) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### GetSourceCountry

`func (o *NewsArticle) GetSourceCountry() string`

GetSourceCountry returns the SourceCountry field if non-nil, zero value otherwise.

### GetSourceCountryOk

`func (o *NewsArticle) GetSourceCountryOk() (*string, bool)`

GetSourceCountryOk returns a tuple with the SourceCountry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceCountry

`func (o *NewsArticle) SetSourceCountry(v string)`

SetSourceCountry sets SourceCountry field to given value.

### HasSourceCountry

`func (o *NewsArticle) HasSourceCountry() bool`

HasSourceCountry returns a boolean if a field has been set.

### GetSentiment

`func (o *NewsArticle) GetSentiment() float32`

GetSentiment returns the Sentiment field if non-nil, zero value otherwise.

### GetSentimentOk

`func (o *NewsArticle) GetSentimentOk() (*float32, bool)`

GetSentimentOk returns a tuple with the Sentiment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentiment

`func (o *NewsArticle) SetSentiment(v float32)`

SetSentiment sets Sentiment field to given value.

### HasSentiment

`func (o *NewsArticle) HasSentiment() bool`

HasSentiment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


