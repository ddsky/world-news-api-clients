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

from worldnewsapi.models.extract_news200_response import ExtractNews200Response


class TestExtractNews200Response(unittest.TestCase):
    """ExtractNews200Response unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractNews200Response:
        """Test ExtractNews200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractNews200Response`
        """
        model = ExtractNews200Response()
        if include_optional:
            return ExtractNews200Response(
                title = '',
                text = '',
                url = '',
                image = '',
                images = [
                    worldnewsapi.models.extract_news_200_response_images_inner.extractNews_200_response_images_inner(
                        width = 56, 
                        title = '', 
                        url = '', 
                        height = 56, )
                    ],
                video = '',
                videos = [
                    worldnewsapi.models.extract_news_200_response_videos_inner.extractNews_200_response_videos_inner(
                        summary = '', 
                        duration = 56, 
                        thumbnail = '', 
                        title = '', 
                        url = '', )
                    ],
                publish_date = '',
                author = '',
                authors = [
                    ''
                    ],
                language = ''
            )
        else:
            return ExtractNews200Response(
        )
        """

    def testExtractNews200Response(self):
        """Test ExtractNews200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
