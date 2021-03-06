=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 1.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::NewsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NewsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::NewsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NewsApi' do
    it 'should create an instance of NewsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::NewsApi)
    end
  end

  # unit tests for extract_news
  # Extract News
  # Extract a news entry from a news site.
  # @param url The url of the news.
  # @param analyze Whether to analyze the news (extract entities etc.)
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'extract_news test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for geo_coordinates
  # Get Geo Coordinates
  # Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
  # @param location The address or name of the location, e.g. Tokyo, Japan.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2002]
  describe 'geo_coordinates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_news
  # Search News
  # Search for news.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :text The text to match in the news content.
  # @option opts [String] :source_countries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
  # @option opts [String] :language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.
  # @option opts [Float] :min_sentiment The minimal sentiment of the news in range [-1,1].
  # @option opts [Float] :max_sentiment The maximal sentiment of the news in range [-1,1].
  # @option opts [String] :earliest_publish_date The news must have been published after this date.
  # @option opts [String] :latest_publish_date The news must have been published before this date.
  # @option opts [String] :news_sources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
  # @option opts [String] :authors A comma-separated list of author names. Only news from any of the given authors will be returned.
  # @option opts [String] :entities Filter news by entities, e.g. ORG:Tesla.
  # @option opts [String] :location_filter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100
  # @option opts [Integer] :offset The number of news to skip in range [0,1000]
  # @option opts [Integer] :number The number of news to return in range [1,100]
  # @option opts [String] :sort The sorting criteria.
  # @option opts [String] :sort_direction Whether to sort ascending or descending.
  # @return [InlineResponse200]
  describe 'search_news test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
