#import <Foundation/Foundation.h>

/**
* World News API
* The world's news wrapped into a single API.
*
* The version of the OpenAPI document: 1.2.0
* Contact: mail@worldnewsapi.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


extern NSString * OAIPercentEscapedStringFromString(NSString *string);

extern NSString * const kOAIApplicationJSONType;

@protocol OAISanitizer <NSObject>

/**
 * Sanitize object for request
 *
 * @param object The query/path/header/form/body param to be sanitized.
 */
- (id) sanitizeForSerialization:(id) object;

/**
 * Convert parameter to NSString
 */
- (NSString *) parameterToString: (id) param;

/**
 * Convert date to NSString
 */
+ (NSString *)dateToString:(id)date;

/**
 * Detects Accept header from accepts NSArray
 *
 * @param accepts NSArray of header
 *
 * @return The Accept header
 */
-(NSString *) selectHeaderAccept:(NSArray *)accepts;

/**
 * Detects Content-Type header from contentTypes NSArray
 *
 * @param contentTypes NSArray of header
 *
 * @return The Content-Type header
 */
-(NSString *) selectHeaderContentType:(NSArray *)contentTypes;

@end

@interface OAISanitizer : NSObject <OAISanitizer>



@end
