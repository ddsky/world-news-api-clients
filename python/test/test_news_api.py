# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 2.0.0
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.api.news_api import NewsApi


class TestNewsApi(unittest.TestCase):
    """NewsApi unit test stubs"""
    def setUp(self) -> None:
        self.api = NewsApi()

    def tearDown(self) -> None:
        pass

    def test_extract_news(self) -> None:
        """Test case for extract_news

        Extract News
        """
        pass

    def test_extract_news_links(self) -> None:
        """Test case for extract_news_links

        Extract News Links
        """
        pass

    def test_get_geo_coordinates(self) -> None:
        """Test case for get_geo_coordinates

        Get Geo Coordinates
        """
        pass

    def test_news_website_to_rss_feed(self) -> None:
        """Test case for news_website_to_rss_feed

        News Website to RSS Feed
        """
        pass

    def test_retrieve_news_articles_by_ids(self) -> None:
        """Test case for retrieve_news_articles_by_ids

        Retrieve News Articles by Ids
        """
        pass

    def test_retrieve_newspaper_front_page(self) -> None:
        """Test case for retrieve_newspaper_front_page

        Retrieve Newspaper Front Page
        """
        pass

    def test_search_news(self) -> None:
        """Test case for search_news

        Search News
        """
        pass

    def test_top_news(self) -> None:
        """Test case for top_news

        Top News
        """
        pass


if __name__ == '__main__':
    unittest.main()
