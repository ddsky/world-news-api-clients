#import "OAINewsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIExtractNews200Response.h"
#import "OAIExtractNewsLinks200Response.h"
#import "OAIGetGeoCoordinates200Response.h"
#import "OAIRetrieveNewsArticlesByIds200Response.h"
#import "OAISearchNews200Response.h"
#import "OAITopNews200Response.h"


@interface OAINewsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAINewsApi

NSString* kOAINewsApiErrorDomain = @"OAINewsApiErrorDomain";
NSInteger kOAINewsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Extract News
/// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
///  @param url The url of the news. 
///
///  @param analyze Whether to analyze the news (extract entities etc.) 
///
///  @returns OAIExtractNews200Response*
///
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(OAIExtractNews200Response* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'analyze' is set
    if (analyze == nil) {
        NSParameterAssert(analyze);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyze"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/extract-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (analyze != nil) {
        queryParams[@"analyze"] = [analyze isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIExtractNews200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIExtractNews200Response*)data, error);
                                }
                            }];
}

///
/// Extract News Links
/// Extract news links from a news website.
///  @param url The url of the news. 
///
///  @param analyze Whether to analyze the news (extract entities etc.) 
///
///  @returns OAIExtractNewsLinks200Response*
///
-(NSURLSessionTask*) extractNewsLinksWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(OAIExtractNewsLinks200Response* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'analyze' is set
    if (analyze == nil) {
        NSParameterAssert(analyze);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyze"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/extract-news-links"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (analyze != nil) {
        queryParams[@"analyze"] = [analyze isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIExtractNewsLinks200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIExtractNewsLinks200Response*)data, error);
                                }
                            }];
}

///
/// Get Geo Coordinates
/// Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
///  @param location The address or name of the location. 
///
///  @returns OAIGetGeoCoordinates200Response*
///
-(NSURLSessionTask*) getGeoCoordinatesWithLocation: (NSString*) location
    completionHandler: (void (^)(OAIGetGeoCoordinates200Response* output, NSError* error)) handler {
    // verify the required parameter 'location' is set
    if (location == nil) {
        NSParameterAssert(location);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"location"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geo-coordinates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (location != nil) {
        queryParams[@"location"] = location;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetGeoCoordinates200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetGeoCoordinates200Response*)data, error);
                                }
                            }];
}

///
/// News Website to RSS Feed
/// Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
///  @param url The url of the news. 
///
///  @param analyze Whether to analyze the news (extract entities etc.) 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) newsWebsiteToRSSFeedWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'analyze' is set
    if (analyze == nil) {
        NSParameterAssert(analyze);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyze"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/feed.rss"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (analyze != nil) {
        queryParams[@"analyze"] = [analyze isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Retrieve News Articles by Ids
/// Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
///  @param ids A comma separated list of news ids. 
///
///  @returns OAIRetrieveNewsArticlesByIds200Response*
///
-(NSURLSessionTask*) retrieveNewsArticlesByIdsWithIds: (NSString*) ids
    completionHandler: (void (^)(OAIRetrieveNewsArticlesByIds200Response* output, NSError* error)) handler {
    // verify the required parameter 'ids' is set
    if (ids == nil) {
        NSParameterAssert(ids);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ids"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ids != nil) {
        queryParams[@"ids"] = ids;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRetrieveNewsArticlesByIds200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetrieveNewsArticlesByIds200Response*)data, error);
                                }
                            }];
}

///
/// Search News
/// Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
///  @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
///
///  @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
///
///  @param language The ISO 6391 language code of the news. (optional)
///
///  @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
///
///  @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
///
///  @param earliestPublishDate The news must have been published after this date. (optional)
///
///  @param latestPublishDate The news must have been published before this date. (optional)
///
///  @param varNewsSources A comma-separated list of news sources from which the news should originate. (optional)
///
///  @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
///
///  @param entities Filter news by entities (see semantic types). (optional)
///
///  @param locationFilter Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional)
///
///  @param sort The sorting criteria (publish-time or sentiment). (optional)
///
///  @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
///
///  @param offset The number of news to skip in range [0,10000] (optional)
///
///  @param number The number of news to return in range [1,100] (optional)
///
///  @returns OAISearchNews200Response*
///
-(NSURLSessionTask*) searchNewsWithText: (NSString*) text
    sourceCountries: (NSString*) sourceCountries
    language: (NSString*) language
    minSentiment: (NSNumber*) minSentiment
    maxSentiment: (NSNumber*) maxSentiment
    earliestPublishDate: (NSString*) earliestPublishDate
    latestPublishDate: (NSString*) latestPublishDate
    varNewsSources: (NSString*) varNewsSources
    authors: (NSString*) authors
    entities: (NSString*) entities
    locationFilter: (NSString*) locationFilter
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchNews200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (sourceCountries != nil) {
        queryParams[@"source-countries"] = sourceCountries;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (minSentiment != nil) {
        queryParams[@"min-sentiment"] = minSentiment;
    }
    if (maxSentiment != nil) {
        queryParams[@"max-sentiment"] = maxSentiment;
    }
    if (earliestPublishDate != nil) {
        queryParams[@"earliest-publish-date"] = earliestPublishDate;
    }
    if (latestPublishDate != nil) {
        queryParams[@"latest-publish-date"] = latestPublishDate;
    }
    if (varNewsSources != nil) {
        queryParams[@"news-sources"] = varNewsSources;
    }
    if (authors != nil) {
        queryParams[@"authors"] = authors;
    }
    if (entities != nil) {
        queryParams[@"entities"] = entities;
    }
    if (locationFilter != nil) {
        queryParams[@"location-filter"] = locationFilter;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sort-direction"] = sortDirection;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISearchNews200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchNews200Response*)data, error);
                                }
                            }];
}

///
/// Top News
/// Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
///  @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved. 
///
///  @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country. 
///
///  @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
///
///  @param headlinesOnly Whether to only return basic information such as id, title, and url of the news. (optional)
///
///  @returns OAITopNews200Response*
///
-(NSURLSessionTask*) topNewsWithSourceCountry: (NSString*) sourceCountry
    language: (NSString*) language
    date: (NSString*) date
    headlinesOnly: (NSNumber*) headlinesOnly
    completionHandler: (void (^)(OAITopNews200Response* output, NSError* error)) handler {
    // verify the required parameter 'sourceCountry' is set
    if (sourceCountry == nil) {
        NSParameterAssert(sourceCountry);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceCountry"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'language' is set
    if (language == nil) {
        NSParameterAssert(language);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"language"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/top-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sourceCountry != nil) {
        queryParams[@"source-country"] = sourceCountry;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (date != nil) {
        queryParams[@"date"] = date;
    }
    if (headlinesOnly != nil) {
        queryParams[@"headlines-only"] = [headlinesOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAITopNews200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITopNews200Response*)data, error);
                                }
                            }];
}



@end
