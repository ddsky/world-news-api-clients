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

from worldnewsapi.models.search_news_sources200_response import SearchNewsSources200Response


class TestSearchNewsSources200Response(unittest.TestCase):
    """SearchNewsSources200Response unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchNewsSources200Response:
        """Test SearchNewsSources200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchNewsSources200Response`
        """
        model = SearchNewsSources200Response()
        if include_optional:
            return SearchNewsSources200Response(
                available = 56,
                sources = [
                    worldnewsapi.models.search_news_sources_200_response_sources_inner.searchNewsSources_200_response_sources_inner(
                        name = '', 
                        url = '', 
                        language = '', )
                    ]
            )
        else:
            return SearchNewsSources200Response(
        )
        """

    def testSearchNewsSources200Response(self):
        """Test SearchNewsSources200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
