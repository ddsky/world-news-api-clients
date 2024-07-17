# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.3.0
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import unittest

from worldnewsapi.models.extract_news200_response_videos_inner import ExtractNews200ResponseVideosInner


class TestExtractNews200ResponseVideosInner(unittest.TestCase):
    """ExtractNews200ResponseVideosInner unit test stubs"""
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self,
                      include_optional) -> ExtractNews200ResponseVideosInner:
        """Test ExtractNews200ResponseVideosInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractNews200ResponseVideosInner`
        """
        model = ExtractNews200ResponseVideosInner()
        if include_optional:
            return ExtractNews200ResponseVideosInner(
                summary = '',
                duration = 56,
                thumbnail = '',
                title = '',
                url = ''
            )
        else:
            return ExtractNews200ResponseVideosInner(
        )
        """

    def testExtractNews200ResponseVideosInner(self):
        """Test ExtractNews200ResponseVideosInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
