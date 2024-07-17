# coding: utf-8

"""
    World News API

    The world's news wrapped into a single API.

    The version of the OpenAPI document: 1.3.1
    Contact: mail@worldnewsapi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from worldnewsapi.models.top_news200_response_top_news_inner import TopNews200ResponseTopNewsInner
from typing import Optional, Set
from typing_extensions import Self


class TopNews200Response(BaseModel):
    """
    TopNews200Response
    """

  # noqa: E501
    top_news: Optional[List[TopNews200ResponseTopNewsInner]] = None
    language: Optional[StrictStr] = None
    country: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["top_news", "language", "country"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of TopNews200Response from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in top_news (list)
        _items = []
        if self.top_news:
            for _item in self.top_news:
                if _item:
                    _items.append(_item.to_dict())
            _dict['top_news'] = _items
        # set to None if language (nullable) is None
        # and model_fields_set contains the field
        if self.language is None and "language" in self.model_fields_set:
            _dict['language'] = None

        # set to None if country (nullable) is None
        # and model_fields_set contains the field
        if self.country is None and "country" in self.model_fields_set:
            _dict['country'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of TopNews200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "top_news": [
                TopNews200ResponseTopNewsInner.from_dict(_item)
                for _item in obj["top_news"]
            ] if obj.get("top_news") is not None else None,
            "language":
            obj.get("language"),
            "country":
            obj.get("country")
        })
        return _obj
