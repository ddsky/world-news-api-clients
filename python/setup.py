# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 2.0.0
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

from setuptools import setup, find_packages  # noqa: H301

# To install the library, run the following
#
# python setup.py install
#
# prerequisite: setuptools
# http://pypi.python.org/pypi/setuptools
NAME = "worldnewsapi"
VERSION = "2.0.0"
PYTHON_REQUIRES = ">=3.7"
REQUIRES = [
    "urllib3 >= 1.25.3, < 2.1.0",
    "python-dateutil",
    "pydantic >= 2",
    "typing-extensions >= 4.7.1",
]

setup(
    name=NAME,
    version=VERSION,
    description="World News API",
    author="David Urbansky",
    author_email="mail@worldnewsapi.com",
    url="",
    keywords=["OpenAPI", "OpenAPI-Generator", "World News API"],
    install_requires=REQUIRES,
    packages=find_packages(exclude=["test", "tests"]),
    include_package_data=True,
    long_description_content_type='text/markdown',
    long_description="""\
    The world&#39;s news wrapped into a single API.
    """,  # noqa: E501
    package_data={"worldnewsapi": ["py.typed"]},
)
