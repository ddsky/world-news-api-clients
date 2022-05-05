#import "OAINewsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineResponse200.h"
#import "OAIInlineResponse2001.h"
#import "OAIInlineResponse2002.h"


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
/// Extract a news entry from a news site.
///  @param url The url of the news. 
///
///  @param analyze Whether to analyze the news (extract entities etc.) 
///
///  @returns OAIInlineResponse2001*
///
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(OAIInlineResponse2001* output, NSError* error)) handler {
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
    NSArray *authSettings = @[@"apiKey"];

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
                              responseType: @"OAIInlineResponse2001*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2001*)data, error);
                                }
                            }];
}

///
/// Get Geo Coordinates
/// Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
///  @param location The address or name of the location, e.g. Tokyo, Japan. 
///
///  @returns OAIInlineResponse2002*
///
-(NSURLSessionTask*) geoCoordinatesWithLocation: (NSString*) location
    completionHandler: (void (^)(OAIInlineResponse2002* output, NSError* error)) handler {
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
    NSArray *authSettings = @[@"apiKey"];

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
                              responseType: @"OAIInlineResponse2002*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2002*)data, error);
                                }
                            }];
}

///
/// Search News
/// Search for news.
///  @param text The text to match in the news content. (optional)
///
///  @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
///
///  @param language The ISO 6391 language code of the news, e.g. \"en\" for English. (optional)
///
///  @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
///
///  @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
///
///  @param earliestPublishDate The news must have been published after this date. (optional)
///
///  @param latestPublishDate The news must have been published before this date. (optional)
///
///  @param varNewsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
///
///  @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
///
///  @param entities Filter news by entities, e.g. ORG:Tesla. (optional)
///
///  @param locationFilter Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional)
///
///  @param offset The number of news to skip in range [0,1000] (optional)
///
///  @param number The number of news to return in range [1,100] (optional)
///
///  @param sort The sorting criteria. (optional)
///
///  @param sortDirection Whether to sort ascending or descending. (optional)
///
///  @returns OAIInlineResponse200*
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
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    completionHandler: (void (^)(OAIInlineResponse200* output, NSError* error)) handler {
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
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sort-direction"] = sortDirection;
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
    NSArray *authSettings = @[@"apiKey"];

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
                              responseType: @"OAIInlineResponse200*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse200*)data, error);
                                }
                            }];
}



@end
