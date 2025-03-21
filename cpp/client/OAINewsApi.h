/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAINewsApi_H
#define OAI_OAINewsApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIExtractNewsLinks_200_response.h"
#include "OAIExtractNews_200_response.h"
#include "OAIGetGeoCoordinates_200_response.h"
#include "OAIObject.h"
#include "OAIRetrieveNewsArticlesByIds_200_response.h"
#include "OAIRetrieveNewspaperFrontPage_200_response.h"
#include "OAISearchNewsSources_200_response.h"
#include "OAISearchNews_200_response.h"
#include "OAITopNews_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAINewsApi : public QObject {
    Q_OBJECT

public:
    OAINewsApi(const int timeOut = 0);
    ~OAINewsApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  url QString [required]
    * @param[in]  analyze bool [optional]
    */
    void extractNews(const QString &url, const ::OpenAPI::OptionalParam<bool> &analyze = ::OpenAPI::OptionalParam<bool>());

    /**
    * @param[in]  url QString [required]
    * @param[in]  analyze bool [optional]
    */
    void extractNewsLinks(const QString &url, const ::OpenAPI::OptionalParam<bool> &analyze = ::OpenAPI::OptionalParam<bool>());

    /**
    * @param[in]  location QString [required]
    */
    void getGeoCoordinates(const QString &location);

    /**
    * @param[in]  url QString [required]
    * @param[in]  extract_news bool [optional]
    */
    void newsWebsiteToRSSFeed(const QString &url, const ::OpenAPI::OptionalParam<bool> &extract_news = ::OpenAPI::OptionalParam<bool>());

    /**
    * @param[in]  ids QString [required]
    */
    void retrieveNewsArticlesByIds(const QString &ids);

    /**
    * @param[in]  source_country QString [optional]
    * @param[in]  source_name QString [optional]
    * @param[in]  date QString [optional]
    */
    void retrieveNewspaperFrontPage(const ::OpenAPI::OptionalParam<QString> &source_country = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &source_name = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &date = ::OpenAPI::OptionalParam<QString>());

    /**
    * @param[in]  text QString [optional]
    * @param[in]  text_match_indexes QString [optional]
    * @param[in]  source_country QString [optional]
    * @param[in]  language QString [optional]
    * @param[in]  min_sentiment double [optional]
    * @param[in]  max_sentiment double [optional]
    * @param[in]  earliest_publish_date QString [optional]
    * @param[in]  latest_publish_date QString [optional]
    * @param[in]  news_sources QString [optional]
    * @param[in]  authors QString [optional]
    * @param[in]  categories QString [optional]
    * @param[in]  entities QString [optional]
    * @param[in]  location_filter QString [optional]
    * @param[in]  sort QString [optional]
    * @param[in]  sort_direction QString [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchNews(const ::OpenAPI::OptionalParam<QString> &text = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &text_match_indexes = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &source_country = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &language = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_sentiment = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_sentiment = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &earliest_publish_date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &latest_publish_date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &news_sources = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &authors = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &categories = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &entities = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &location_filter = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort_direction = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  name QString [required]
    */
    void searchNewsSources(const QString &name);

    /**
    * @param[in]  source_country QString [required]
    * @param[in]  language QString [required]
    * @param[in]  date QString [optional]
    * @param[in]  headlines_only bool [optional]
    */
    void topNews(const QString &source_country, const QString &language, const ::OpenAPI::OptionalParam<QString> &date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &headlines_only = ::OpenAPI::OptionalParam<bool>());


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void extractNewsCallback(OAIHttpRequestWorker *worker);
    void extractNewsLinksCallback(OAIHttpRequestWorker *worker);
    void getGeoCoordinatesCallback(OAIHttpRequestWorker *worker);
    void newsWebsiteToRSSFeedCallback(OAIHttpRequestWorker *worker);
    void retrieveNewsArticlesByIdsCallback(OAIHttpRequestWorker *worker);
    void retrieveNewspaperFrontPageCallback(OAIHttpRequestWorker *worker);
    void searchNewsCallback(OAIHttpRequestWorker *worker);
    void searchNewsSourcesCallback(OAIHttpRequestWorker *worker);
    void topNewsCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void extractNewsSignal(OAIExtractNews_200_response summary);
    void extractNewsLinksSignal(OAIExtractNewsLinks_200_response summary);
    void getGeoCoordinatesSignal(OAIGetGeoCoordinates_200_response summary);
    void newsWebsiteToRSSFeedSignal(OAIObject summary);
    void retrieveNewsArticlesByIdsSignal(OAIRetrieveNewsArticlesByIds_200_response summary);
    void retrieveNewspaperFrontPageSignal(OAIRetrieveNewspaperFrontPage_200_response summary);
    void searchNewsSignal(OAISearchNews_200_response summary);
    void searchNewsSourcesSignal(OAISearchNewsSources_200_response summary);
    void topNewsSignal(OAITopNews_200_response summary);

    void extractNewsSignalFull(OAIHttpRequestWorker *worker, OAIExtractNews_200_response summary);
    void extractNewsLinksSignalFull(OAIHttpRequestWorker *worker, OAIExtractNewsLinks_200_response summary);
    void getGeoCoordinatesSignalFull(OAIHttpRequestWorker *worker, OAIGetGeoCoordinates_200_response summary);
    void newsWebsiteToRSSFeedSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void retrieveNewsArticlesByIdsSignalFull(OAIHttpRequestWorker *worker, OAIRetrieveNewsArticlesByIds_200_response summary);
    void retrieveNewspaperFrontPageSignalFull(OAIHttpRequestWorker *worker, OAIRetrieveNewspaperFrontPage_200_response summary);
    void searchNewsSignalFull(OAIHttpRequestWorker *worker, OAISearchNews_200_response summary);
    void searchNewsSourcesSignalFull(OAIHttpRequestWorker *worker, OAISearchNewsSources_200_response summary);
    void topNewsSignalFull(OAIHttpRequestWorker *worker, OAITopNews_200_response summary);

    Q_DECL_DEPRECATED_X("Use extractNewsSignalError() instead")
    void extractNewsSignalE(OAIExtractNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsSignalError(OAIExtractNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractNewsLinksSignalError() instead")
    void extractNewsLinksSignalE(OAIExtractNewsLinks_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsLinksSignalError(OAIExtractNewsLinks_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getGeoCoordinatesSignalError() instead")
    void getGeoCoordinatesSignalE(OAIGetGeoCoordinates_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getGeoCoordinatesSignalError(OAIGetGeoCoordinates_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use newsWebsiteToRSSFeedSignalError() instead")
    void newsWebsiteToRSSFeedSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void newsWebsiteToRSSFeedSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use retrieveNewsArticlesByIdsSignalError() instead")
    void retrieveNewsArticlesByIdsSignalE(OAIRetrieveNewsArticlesByIds_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void retrieveNewsArticlesByIdsSignalError(OAIRetrieveNewsArticlesByIds_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use retrieveNewspaperFrontPageSignalError() instead")
    void retrieveNewspaperFrontPageSignalE(OAIRetrieveNewspaperFrontPage_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void retrieveNewspaperFrontPageSignalError(OAIRetrieveNewspaperFrontPage_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSignalError() instead")
    void searchNewsSignalE(OAISearchNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSignalError(OAISearchNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSourcesSignalError() instead")
    void searchNewsSourcesSignalE(OAISearchNewsSources_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSourcesSignalError(OAISearchNewsSources_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use topNewsSignalError() instead")
    void topNewsSignalE(OAITopNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void topNewsSignalError(OAITopNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use extractNewsSignalErrorFull() instead")
    void extractNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractNewsLinksSignalErrorFull() instead")
    void extractNewsLinksSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsLinksSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getGeoCoordinatesSignalErrorFull() instead")
    void getGeoCoordinatesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getGeoCoordinatesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use newsWebsiteToRSSFeedSignalErrorFull() instead")
    void newsWebsiteToRSSFeedSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void newsWebsiteToRSSFeedSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use retrieveNewsArticlesByIdsSignalErrorFull() instead")
    void retrieveNewsArticlesByIdsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void retrieveNewsArticlesByIdsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use retrieveNewspaperFrontPageSignalErrorFull() instead")
    void retrieveNewspaperFrontPageSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void retrieveNewspaperFrontPageSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSignalErrorFull() instead")
    void searchNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSourcesSignalErrorFull() instead")
    void searchNewsSourcesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSourcesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use topNewsSignalErrorFull() instead")
    void topNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void topNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
