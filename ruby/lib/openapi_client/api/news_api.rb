=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 1.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class NewsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Extract News
    # Extract a news entry from a news site.
    # @param url [String] The url of the news.
    # @param analyze [Boolean] Whether to analyze the news (extract entities etc.)
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def extract_news(url, analyze, opts = {})
      data, _status_code, _headers = extract_news_with_http_info(url, analyze, opts)
      data
    end

    # Extract News
    # Extract a news entry from a news site.
    # @param url [String] The url of the news.
    # @param analyze [Boolean] Whether to analyze the news (extract entities etc.)
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def extract_news_with_http_info(url, analyze, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NewsApi.extract_news ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling NewsApi.extract_news"
      end
      # verify the required parameter 'analyze' is set
      if @api_client.config.client_side_validation && analyze.nil?
        fail ArgumentError, "Missing the required parameter 'analyze' when calling NewsApi.extract_news"
      end
      # resource path
      local_var_path = '/extract-news'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'analyze'] = analyze

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2001'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"NewsApi.extract_news",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NewsApi#extract_news\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract News Links
    # Extract a news links from a news website. 
    # @param url [String] The url from which links should be extracted.
    # @param api_key [String] Your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prefix The prefix the news links must start with.
    # @option opts [Boolean] :sub_domain Whether to include links to news on sub-domains.
    # @return [InlineResponse2002]
    def extract_news_links(url, api_key, opts = {})
      data, _status_code, _headers = extract_news_links_with_http_info(url, api_key, opts)
      data
    end

    # Extract News Links
    # Extract a news links from a news website. 
    # @param url [String] The url from which links should be extracted.
    # @param api_key [String] Your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prefix The prefix the news links must start with.
    # @option opts [Boolean] :sub_domain Whether to include links to news on sub-domains.
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def extract_news_links_with_http_info(url, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NewsApi.extract_news_links ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling NewsApi.extract_news_links"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling NewsApi.extract_news_links"
      end
      # resource path
      local_var_path = '/extract-news-links'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'api-key'] = api_key
      query_params[:'prefix'] = opts[:'prefix'] if !opts[:'prefix'].nil?
      query_params[:'sub-domain'] = opts[:'sub_domain'] if !opts[:'sub_domain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2002'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"NewsApi.extract_news_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NewsApi#extract_news_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Geo Coordinates
    # Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
    # @param location [String] The address or name of the location, e.g. Tokyo, Japan.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def geo_coordinates(location, opts = {})
      data, _status_code, _headers = geo_coordinates_with_http_info(location, opts)
      data
    end

    # Get Geo Coordinates
    # Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
    # @param location [String] The address or name of the location, e.g. Tokyo, Japan.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def geo_coordinates_with_http_info(location, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NewsApi.geo_coordinates ...'
      end
      # verify the required parameter 'location' is set
      if @api_client.config.client_side_validation && location.nil?
        fail ArgumentError, "Missing the required parameter 'location' when calling NewsApi.geo_coordinates"
      end
      # resource path
      local_var_path = '/geo-coordinates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'location'] = location

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2003'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"NewsApi.geo_coordinates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NewsApi#geo_coordinates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # News Website to RSS Feed
    # Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
    # @param url [String] The url from which links should be extracted.
    # @param api_key [String] Your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :extract_news Whether extract news and add information such as description, publish date, and image to each item.
    # @return [Object]
    def news_website_to_rss_feed(url, api_key, opts = {})
      data, _status_code, _headers = news_website_to_rss_feed_with_http_info(url, api_key, opts)
      data
    end

    # News Website to RSS Feed
    # Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
    # @param url [String] The url from which links should be extracted.
    # @param api_key [String] Your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :extract_news Whether extract news and add information such as description, publish date, and image to each item.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def news_website_to_rss_feed_with_http_info(url, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NewsApi.news_website_to_rss_feed ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling NewsApi.news_website_to_rss_feed"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling NewsApi.news_website_to_rss_feed"
      end
      # resource path
      local_var_path = '/feed.rss'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'api-key'] = api_key
      query_params[:'extract-news'] = opts[:'extract_news'] if !opts[:'extract_news'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"NewsApi.news_website_to_rss_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NewsApi#news_website_to_rss_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def search_news(opts = {})
      data, _status_code, _headers = search_news_with_http_info(opts)
      data
    end

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
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def search_news_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NewsApi.search_news ...'
      end
      if @api_client.config.client_side_validation && !opts[:'min_sentiment'].nil? && opts[:'min_sentiment'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_sentiment"]" when calling NewsApi.search_news, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_sentiment'].nil? && opts[:'min_sentiment'] < -1
        fail ArgumentError, 'invalid value for "opts[:"min_sentiment"]" when calling NewsApi.search_news, must be greater than or equal to -1.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_sentiment'].nil? && opts[:'max_sentiment'] > 1
        fail ArgumentError, 'invalid value for "opts[:"max_sentiment"]" when calling NewsApi.search_news, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_sentiment'].nil? && opts[:'max_sentiment'] < -1
        fail ArgumentError, 'invalid value for "opts[:"max_sentiment"]" when calling NewsApi.search_news, must be greater than or equal to -1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling NewsApi.search_news, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling NewsApi.search_news, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling NewsApi.search_news, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling NewsApi.search_news, must be greater than or equal to 1.'
      end

      allowable_values = ["relevance", "publish-time", "sentiment"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_direction'] && !allowable_values.include?(opts[:'sort_direction'])
        fail ArgumentError, "invalid value for \"sort_direction\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/search-news'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'text'] = opts[:'text'] if !opts[:'text'].nil?
      query_params[:'source-countries'] = opts[:'source_countries'] if !opts[:'source_countries'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'min-sentiment'] = opts[:'min_sentiment'] if !opts[:'min_sentiment'].nil?
      query_params[:'max-sentiment'] = opts[:'max_sentiment'] if !opts[:'max_sentiment'].nil?
      query_params[:'earliest-publish-date'] = opts[:'earliest_publish_date'] if !opts[:'earliest_publish_date'].nil?
      query_params[:'latest-publish-date'] = opts[:'latest_publish_date'] if !opts[:'latest_publish_date'].nil?
      query_params[:'news-sources'] = opts[:'news_sources'] if !opts[:'news_sources'].nil?
      query_params[:'authors'] = opts[:'authors'] if !opts[:'authors'].nil?
      query_params[:'entities'] = opts[:'entities'] if !opts[:'entities'].nil?
      query_params[:'location-filter'] = opts[:'location_filter'] if !opts[:'location_filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort-direction'] = opts[:'sort_direction'] if !opts[:'sort_direction'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"NewsApi.search_news",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NewsApi#search_news\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
