# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.3.1
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.models.top_news200_response import TopNews200Response


class TestTopNews200Response(unittest.TestCase):
    """TopNews200Response unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TopNews200Response:
        """Test TopNews200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TopNews200Response`
        """
        model = TopNews200Response()
        if include_optional:
            return TopNews200Response(
                top_news = [
                    worldnewsapi.models.top_news_200_response_top_news_inner.topNews_200_response_top_news_inner(
                        news = [
                            worldnewsapi.models.top_news_200_response_top_news_inner_news_inner.topNews_200_response_top_news_inner_news_inner(
                                summary = '', 
                                image = '', 
                                author = '', 
                                id = 56, 
                                text = '', 
                                title = '', 
                                publish_date = '', 
                                url = '', 
                                authors = [
                                    ''
                                    ], )
                            ], )
                    ],
                language = '',
                country = ''
            )
        else:
            return TopNews200Response(
        )
        """

    def testTopNews200Response(self):
        """Test TopNews200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
