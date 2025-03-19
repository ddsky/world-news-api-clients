cmake_minimum_required(VERSION 3.5)

project(worldnewsapi)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIExtractNewsLinks_200_response.h
  OAIExtractNews_200_response.h
  OAIExtractNews_200_response_images_inner.h
  OAIExtractNews_200_response_videos_inner.h
  OAIGetGeoCoordinates_200_response.h
  OAIRetrieveNewsArticlesByIds_200_response.h
  OAIRetrieveNewsArticlesByIds_200_response_news_inner.h
  OAIRetrieveNewspaperFrontPage_200_response.h
  OAIRetrieveNewspaperFrontPage_200_response_front_page.h
  OAISearchNewsSources_200_response.h
  OAISearchNewsSources_200_response_sources_inner.h
  OAISearchNews_200_response.h
  OAISearchNews_200_response_news_inner.h
  OAITopNews_200_response.h
  OAITopNews_200_response_top_news_inner.h
  OAITopNews_200_response_top_news_inner_news_inner.h
  OAINewsApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAIExtractNewsLinks_200_response.cpp
  OAIExtractNews_200_response.cpp
  OAIExtractNews_200_response_images_inner.cpp
  OAIExtractNews_200_response_videos_inner.cpp
  OAIGetGeoCoordinates_200_response.cpp
  OAIRetrieveNewsArticlesByIds_200_response.cpp
  OAIRetrieveNewsArticlesByIds_200_response_news_inner.cpp
  OAIRetrieveNewspaperFrontPage_200_response.cpp
  OAIRetrieveNewspaperFrontPage_200_response_front_page.cpp
  OAISearchNewsSources_200_response.cpp
  OAISearchNewsSources_200_response_sources_inner.cpp
  OAISearchNews_200_response.cpp
  OAISearchNews_200_response_news_inner.cpp
  OAITopNews_200_response.cpp
  OAITopNews_200_response_top_news_inner.cpp
  OAITopNews_200_response_top_news_inner_news_inner.cpp
  OAINewsApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
