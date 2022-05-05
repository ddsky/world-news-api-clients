# flake8: noqa

# import all models into this package
# if you have many models here with many references from one model to another this may
# raise a RecursionError
# to avoid this, import only the models that you directly need like:
# from from openapi_client.model.pet import Pet
# or import this package, but before doing it, use:
# import sys
# sys.setrecursionlimit(n)

from openapi_client.model.inline_response200 import InlineResponse200
from openapi_client.model.inline_response2001 import InlineResponse2001
from openapi_client.model.inline_response2002 import InlineResponse2002
from openapi_client.model.inline_response200_news import InlineResponse200News
from openapi_client.model.news import News
