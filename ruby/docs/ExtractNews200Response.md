# OpenapiClient::ExtractNews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **images** | [**Array&lt;ExtractNews200ResponseImagesInner&gt;**](ExtractNews200ResponseImagesInner.md) |  | [optional] |
| **video** | **String** |  | [optional] |
| **videos** | [**Array&lt;ExtractNews200ResponseVideosInner&gt;**](ExtractNews200ResponseVideosInner.md) |  | [optional] |
| **publish_date** | **String** |  | [optional] |
| **author** | **String** |  | [optional] |
| **authors** | **Array&lt;String&gt;** |  | [optional] |
| **language** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExtractNews200Response.new(
  title: null,
  text: null,
  url: null,
  image: null,
  images: null,
  video: null,
  videos: null,
  publish_date: null,
  author: null,
  authors: null,
  language: null
)
```

