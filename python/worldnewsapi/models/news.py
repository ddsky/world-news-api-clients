# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.1
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing import Optional, Set
from typing_extensions import Self


class News(BaseModel):
    """
    A news entry.
    """

  # noqa: E501
    id: Optional[StrictInt] = None
    title: Optional[StrictStr] = None
    text: Optional[StrictStr] = None
    summary: Optional[StrictStr] = None
    url: Optional[StrictStr] = None
    image: Optional[StrictStr] = None
    publish_date: Optional[StrictStr] = None
    author: Optional[StrictStr] = None
    language: Optional[StrictStr] = None
    source_country: Optional[StrictStr] = None
    sentiment: Optional[Union[StrictFloat, StrictInt]] = None
    __properties: ClassVar[List[str]] = [
        "id", "title", "text", "summary", "url", "image", "publish_date",
        "author", "language", "source_country", "sentiment"
    ]

    model_config = {
        "populate_by_name": True,
        "validate_assignment": True,
        "protected_namespaces": (),
    }

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of News from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # set to None if image (nullable) is None
        # and model_fields_set contains the field
        if self.image is None and "image" in self.model_fields_set:
            _dict['image'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of News from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "id": obj.get("id"),
            "title": obj.get("title"),
            "text": obj.get("text"),
            "summary": obj.get("summary"),
            "url": obj.get("url"),
            "image": obj.get("image"),
            "publish_date": obj.get("publish_date"),
            "author": obj.get("author"),
            "language": obj.get("language"),
            "source_country": obj.get("source_country"),
            "sentiment": obj.get("sentiment")
        })
        return _obj