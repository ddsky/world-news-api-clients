QT += network

HEADERS += \
# Models
    $${PWD}/OAIExtractNewsLinks_200_response.h \
    $${PWD}/OAIExtractNews_200_response.h \
    $${PWD}/OAIExtractNews_200_response_images_inner.h \
    $${PWD}/OAIExtractNews_200_response_videos_inner.h \
    $${PWD}/OAIGetGeoCoordinates_200_response.h \
    $${PWD}/OAIRetrieveNewsArticlesByIds_200_response.h \
    $${PWD}/OAIRetrieveNewsArticlesByIds_200_response_news_inner.h \
    $${PWD}/OAIRetrieveNewspaperFrontPage_200_response.h \
    $${PWD}/OAIRetrieveNewspaperFrontPage_200_response_front_page.h \
    $${PWD}/OAISearchNewsSources_200_response.h \
    $${PWD}/OAISearchNewsSources_200_response_sources_inner.h \
    $${PWD}/OAISearchNews_200_response.h \
    $${PWD}/OAISearchNews_200_response_news_inner.h \
    $${PWD}/OAITopNews_200_response.h \
    $${PWD}/OAITopNews_200_response_top_news_inner.h \
    $${PWD}/OAITopNews_200_response_top_news_inner_news_inner.h \
# APIs
    $${PWD}/OAINewsApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIExtractNewsLinks_200_response.cpp \
    $${PWD}/OAIExtractNews_200_response.cpp \
    $${PWD}/OAIExtractNews_200_response_images_inner.cpp \
    $${PWD}/OAIExtractNews_200_response_videos_inner.cpp \
    $${PWD}/OAIGetGeoCoordinates_200_response.cpp \
    $${PWD}/OAIRetrieveNewsArticlesByIds_200_response.cpp \
    $${PWD}/OAIRetrieveNewsArticlesByIds_200_response_news_inner.cpp \
    $${PWD}/OAIRetrieveNewspaperFrontPage_200_response.cpp \
    $${PWD}/OAIRetrieveNewspaperFrontPage_200_response_front_page.cpp \
    $${PWD}/OAISearchNewsSources_200_response.cpp \
    $${PWD}/OAISearchNewsSources_200_response_sources_inner.cpp \
    $${PWD}/OAISearchNews_200_response.cpp \
    $${PWD}/OAISearchNews_200_response_news_inner.cpp \
    $${PWD}/OAITopNews_200_response.cpp \
    $${PWD}/OAITopNews_200_response_top_news_inner.cpp \
    $${PWD}/OAITopNews_200_response_top_news_inner_news_inner.cpp \
# APIs
    $${PWD}/OAINewsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
