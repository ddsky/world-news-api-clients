# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.1
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.models.news_article import NewsArticle


class TestNewsArticle(unittest.TestCase):
    """NewsArticle unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> NewsArticle:
        """Test NewsArticle
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `NewsArticle`
        """
        model = NewsArticle()
        if include_optional:
            return NewsArticle(
                id = 56,
                title = '',
                text = '',
                summary = '',
                url = '',
                image = '',
                publish_date = '',
                author = '',
                language = '',
                source_country = '',
                sentiment = 1.337
            )
        else:
            return NewsArticle(
        )
        """

    def testNewsArticle(self):
        """Test NewsArticle"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
