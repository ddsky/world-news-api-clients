# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 2.2.0
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.models.retrieve_news_articles_by_ids200_response import RetrieveNewsArticlesByIds200Response


class TestRetrieveNewsArticlesByIds200Response(unittest.TestCase):
    """RetrieveNewsArticlesByIds200Response unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(
            self, include_optional) -> RetrieveNewsArticlesByIds200Response:
        """Test RetrieveNewsArticlesByIds200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveNewsArticlesByIds200Response`
        """
        model = RetrieveNewsArticlesByIds200Response()
        if include_optional:
            return RetrieveNewsArticlesByIds200Response(
                news = [
                    worldnewsapi.models.retrieve_news_articles_by_ids_200_response_news_inner.retrieveNewsArticlesByIds_200_response_news_inner(
                        summary = '', 
                        image = '', 
                        sentiment = 1.337, 
                        language = '', 
                        title = '', 
                        url = '', 
                        source_country = '', 
                        id = 56, 
                        text = '', 
                        category = '', 
                        publish_date = '', 
                        authors = [
                            ''
                            ], )
                    ]
            )
        else:
            return RetrieveNewsArticlesByIds200Response(
        )
        """

    def testRetrieveNewsArticlesByIds200Response(self):
        """Test RetrieveNewsArticlesByIds200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
