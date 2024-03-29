# coding: utf-8

# flake8: noqa

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.1
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

__version__ = "1.0.10"

# import apis into sdk package
from worldnewsapi.api.news_api import NewsApi

# import ApiClient
from worldnewsapi.api_response import ApiResponse
from worldnewsapi.api_client import ApiClient
from worldnewsapi.configuration import Configuration
from worldnewsapi.exceptions import OpenApiException
from worldnewsapi.exceptions import ApiTypeError
from worldnewsapi.exceptions import ApiValueError
from worldnewsapi.exceptions import ApiKeyError
from worldnewsapi.exceptions import ApiAttributeError
from worldnewsapi.exceptions import ApiException

# import models into sdk package
from worldnewsapi.models.extract_links_response import ExtractLinksResponse
from worldnewsapi.models.extract_news_response import ExtractNewsResponse
from worldnewsapi.models.geo_coordinates_response import GeoCoordinatesResponse
from worldnewsapi.models.news import News
from worldnewsapi.models.news_article import NewsArticle
from worldnewsapi.models.search_news_response import SearchNewsResponse
