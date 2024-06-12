# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.2.0
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.models.retrieve_news_articles_by_ids200_response_news_inner import RetrieveNewsArticlesByIds200ResponseNewsInner


class TestRetrieveNewsArticlesByIds200ResponseNewsInner(unittest.TestCase):
    """RetrieveNewsArticlesByIds200ResponseNewsInner unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(
            self,
            include_optional) -> RetrieveNewsArticlesByIds200ResponseNewsInner:
        """Test RetrieveNewsArticlesByIds200ResponseNewsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveNewsArticlesByIds200ResponseNewsInner`
        """
        model = RetrieveNewsArticlesByIds200ResponseNewsInner()
        if include_optional:
            return RetrieveNewsArticlesByIds200ResponseNewsInner(
                summary = '',
                image = '',
                sentiment = 1.337,
                catgory = '',
                language = '',
                title = '',
                url = '',
                source_country = '',
                id = 56,
                text = '',
                publish_date = '',
                authors = [
                    ''
                    ]
            )
        else:
            return RetrieveNewsArticlesByIds200ResponseNewsInner(
        )
        """

    def testRetrieveNewsArticlesByIds200ResponseNewsInner(self):
        """Test RetrieveNewsArticlesByIds200ResponseNewsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()