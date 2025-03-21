=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 2.2.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

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
  # Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
  # @param url The url of the news.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
  # @return [ExtractNews200Response]
  describe 'extract_news test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extract_news_links
  # Extract News Links
  # Extract news links from a news website.
  # @param url The url of the news.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
  # @return [ExtractNewsLinks200Response]
  describe 'extract_news_links test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_geo_coordinates
  # Get Geo Coordinates
  # Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
  # @param location The address or name of the location.
  # @param [Hash] opts the optional parameters
  # @return [GetGeoCoordinates200Response]
  describe 'get_geo_coordinates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for news_website_to_rss_feed
  # News Website to RSS Feed
  # Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
  # @param url The url of the site for which an RSS feed should be created.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :extract_news Whether to extract the news for each link instead of just returning the link.
  # @return [Object]
  describe 'news_website_to_rss_feed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_news_articles_by_ids
  # Retrieve News Articles by Ids
  # Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
  # @param ids A comma separated list of news ids.
  # @param [Hash] opts the optional parameters
  # @return [RetrieveNewsArticlesByIds200Response]
  describe 'retrieve_news_articles_by_ids test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_newspaper_front_page
  # Retrieve Newspaper Front Page
  # Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here&#39;s an example of some of today&#39;s newspapers:
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source_country The ISO 3166 country code of the newspaper publication.
  # @option opts [String] :source_name The identifier of the publication see attached list.
  # @option opts [String] :date The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
  # @return [RetrieveNewspaperFrontPage200Response]
  describe 'retrieve_newspaper_front_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_news
  # Search News
  # Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;.
  # @option opts [String] :text_match_indexes If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
  # @option opts [String] :source_country The ISO 3166 country code from which the news should originate.
  # @option opts [String] :language The ISO 6391 language code of the news.
  # @option opts [Float] :min_sentiment The minimal sentiment of the news in range [-1,1].
  # @option opts [Float] :max_sentiment The maximal sentiment of the news in range [-1,1].
  # @option opts [String] :earliest_publish_date The news must have been published after this date.
  # @option opts [String] :latest_publish_date The news must have been published before this date.
  # @option opts [String] :news_sources A comma-separated list of news sources from which the news should originate.
  # @option opts [String] :authors A comma-separated list of author names. Only news from any of the given authors will be returned.
  # @option opts [String] :categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
  # @option opts [String] :entities Filter news by entities (see semantic types).
  # @option opts [String] :location_filter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers.
  # @option opts [String] :sort The sorting criteria (publish-time).
  # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
  # @option opts [Integer] :offset The number of news to skip in range [0,100000]
  # @option opts [Integer] :number The number of news to return in range [1,100]
  # @return [SearchNews200Response]
  describe 'search_news test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_news_sources
  # Search News Sources
  # Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
  # @param name The (partial) name of the source.
  # @param [Hash] opts the optional parameters
  # @return [SearchNewsSources200Response]
  describe 'search_news_sources test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for top_news
  # Top News
  # Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
  # @param source_country The ISO 3166 country code of the country for which top news should be retrieved.
  # @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  # @option opts [Boolean] :headlines_only Whether to only return basic information such as id, title, and url of the news.
  # @return [TopNews200Response]
  describe 'top_news test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
