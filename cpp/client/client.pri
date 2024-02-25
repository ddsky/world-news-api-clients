QT += network

HEADERS += \
# Models
    $${PWD}/OAIInline_response_200.h \
    $${PWD}/OAIInline_response_200_1.h \
    $${PWD}/OAIInline_response_200_2.h \
    $${PWD}/OAIInline_response_200_3.h \
    $${PWD}/OAIInline_response_200_news.h \
    $${PWD}/OAINews.h \
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
    $${PWD}/OAIInline_response_200.cpp \
    $${PWD}/OAIInline_response_200_1.cpp \
    $${PWD}/OAIInline_response_200_2.cpp \
    $${PWD}/OAIInline_response_200_3.cpp \
    $${PWD}/OAIInline_response_200_news.cpp \
    $${PWD}/OAINews.cpp \
# APIs
    $${PWD}/OAINewsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
