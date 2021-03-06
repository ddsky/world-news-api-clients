=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 1.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/inline_response200'
require 'openapi_client/models/inline_response2001'
require 'openapi_client/models/inline_response2002'
require 'openapi_client/models/inline_response200_news'
require 'openapi_client/models/news'

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
