=begin comment

World News API

The world's news wrapped into a single API.

The version of the OpenAPI document: 1.2.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::NewsApi');

my $api = WWW::OpenAPIClient::NewsApi->new();
isa_ok($api, 'WWW::OpenAPIClient::NewsApi');

#
# extract_news test
#
# uncomment below and update the test
#my $extract_news_url = undef; # replace NULL with a proper value
#my $extract_news_analyze = undef; # replace NULL with a proper value
#my $extract_news_result = $api->extract_news(url => $extract_news_url, analyze => $extract_news_analyze);

#
# extract_news_links test
#
# uncomment below and update the test
#my $extract_news_links_url = undef; # replace NULL with a proper value
#my $extract_news_links_analyze = undef; # replace NULL with a proper value
#my $extract_news_links_result = $api->extract_news_links(url => $extract_news_links_url, analyze => $extract_news_links_analyze);

#
# get_geo_coordinates test
#
# uncomment below and update the test
#my $get_geo_coordinates_location = undef; # replace NULL with a proper value
#my $get_geo_coordinates_result = $api->get_geo_coordinates(location => $get_geo_coordinates_location);

#
# news_website_to_rss_feed test
#
# uncomment below and update the test
#my $news_website_to_rss_feed_url = undef; # replace NULL with a proper value
#my $news_website_to_rss_feed_analyze = undef; # replace NULL with a proper value
#my $news_website_to_rss_feed_result = $api->news_website_to_rss_feed(url => $news_website_to_rss_feed_url, analyze => $news_website_to_rss_feed_analyze);

#
# retrieve_news_articles_by_ids test
#
# uncomment below and update the test
#my $retrieve_news_articles_by_ids_ids = undef; # replace NULL with a proper value
#my $retrieve_news_articles_by_ids_result = $api->retrieve_news_articles_by_ids(ids => $retrieve_news_articles_by_ids_ids);

#
# search_news test
#
# uncomment below and update the test
#my $search_news_text = undef; # replace NULL with a proper value
#my $search_news_source_countries = undef; # replace NULL with a proper value
#my $search_news_language = undef; # replace NULL with a proper value
#my $search_news_min_sentiment = undef; # replace NULL with a proper value
#my $search_news_max_sentiment = undef; # replace NULL with a proper value
#my $search_news_earliest_publish_date = undef; # replace NULL with a proper value
#my $search_news_latest_publish_date = undef; # replace NULL with a proper value
#my $search_news_news_sources = undef; # replace NULL with a proper value
#my $search_news_authors = undef; # replace NULL with a proper value
#my $search_news_entities = undef; # replace NULL with a proper value
#my $search_news_location_filter = undef; # replace NULL with a proper value
#my $search_news_sort = undef; # replace NULL with a proper value
#my $search_news_sort_direction = undef; # replace NULL with a proper value
#my $search_news_offset = undef; # replace NULL with a proper value
#my $search_news_number = undef; # replace NULL with a proper value
#my $search_news_result = $api->search_news(text => $search_news_text, source_countries => $search_news_source_countries, language => $search_news_language, min_sentiment => $search_news_min_sentiment, max_sentiment => $search_news_max_sentiment, earliest_publish_date => $search_news_earliest_publish_date, latest_publish_date => $search_news_latest_publish_date, news_sources => $search_news_news_sources, authors => $search_news_authors, entities => $search_news_entities, location_filter => $search_news_location_filter, sort => $search_news_sort, sort_direction => $search_news_sort_direction, offset => $search_news_offset, number => $search_news_number);

#
# top_news test
#
# uncomment below and update the test
#my $top_news_source_country = undef; # replace NULL with a proper value
#my $top_news_language = undef; # replace NULL with a proper value
#my $top_news_date = undef; # replace NULL with a proper value
#my $top_news_headlines_only = undef; # replace NULL with a proper value
#my $top_news_result = $api->top_news(source_country => $top_news_source_country, language => $top_news_language, date => $top_news_date, headlines_only => $top_news_headlines_only);


done_testing();
