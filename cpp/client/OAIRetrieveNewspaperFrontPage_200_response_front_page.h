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

/*
 * OAIRetrieveNewspaperFrontPage_200_response_front_page.h
 *
 * 
 */

#ifndef OAIRetrieveNewspaperFrontPage_200_response_front_page_H
#define OAIRetrieveNewspaperFrontPage_200_response_front_page_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveNewspaperFrontPage_200_response_front_page : public OAIObject {
public:
    OAIRetrieveNewspaperFrontPage_200_response_front_page();
    OAIRetrieveNewspaperFrontPage_200_response_front_page(QString json);
    ~OAIRetrieveNewspaperFrontPage_200_response_front_page() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QString getDate() const;
    void setDate(const QString &date);
    bool is_date_Set() const;
    bool is_date_Valid() const;

    QString getCountry() const;
    void setCountry(const QString &country);
    bool is_country_Set() const;
    bool is_country_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QString m_date;
    bool m_date_isSet;
    bool m_date_isValid;

    QString m_country;
    bool m_country_isSet;
    bool m_country_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString m_language;
    bool m_language_isSet;
    bool m_language_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveNewspaperFrontPage_200_response_front_page)

#endif // OAIRetrieveNewspaperFrontPage_200_response_front_page_H
