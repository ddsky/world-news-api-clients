=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 1.3.1
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/extract_news200_response'
require 'openapi_client/models/extract_news200_response_images_inner'
require 'openapi_client/models/extract_news200_response_videos_inner'
require 'openapi_client/models/extract_news_links200_response'
require 'openapi_client/models/get_geo_coordinates200_response'
require 'openapi_client/models/newspaper_front_pages200_response'
require 'openapi_client/models/newspaper_front_pages200_response_front_page'
require 'openapi_client/models/retrieve_news_articles_by_ids200_response'
require 'openapi_client/models/retrieve_news_articles_by_ids200_response_news_inner'
require 'openapi_client/models/search_news200_response'
require 'openapi_client/models/search_news200_response_news_inner'
require 'openapi_client/models/top_news200_response'
require 'openapi_client/models/top_news200_response_top_news_inner'
require 'openapi_client/models/top_news200_response_top_news_inner_news_inner'

# APIs
require 'openapi_client/api/news_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
