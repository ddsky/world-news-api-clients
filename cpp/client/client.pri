QT += network

HEADERS += \
# Models
    $${PWD}/OAIExtractLinksResponse.h \
    $${PWD}/OAIExtractNewsResponse.h \
    $${PWD}/OAIGeoCoordinatesResponse.h \
    $${PWD}/OAINews.h \
    $${PWD}/OAINewsArticle.h \
    $${PWD}/OAISearchNewsResponse.h \
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
    $${PWD}/OAIExtractLinksResponse.cpp \
    $${PWD}/OAIExtractNewsResponse.cpp \
    $${PWD}/OAIGeoCoordinatesResponse.cpp \
    $${PWD}/OAINews.cpp \
    $${PWD}/OAINewsArticle.cpp \
    $${PWD}/OAISearchNewsResponse.cpp \
# APIs
    $${PWD}/OAINewsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
