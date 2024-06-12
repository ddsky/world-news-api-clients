#import "OAIExtractNews200Response.h"

@implementation OAIExtractNews200Response

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"text": @"text", @"url": @"url", @"image": @"image", @"images": @"images", @"video": @"video", @"videos": @"videos", @"publishDate": @"publish_date", @"author": @"author", @"authors": @"authors", @"language": @"language" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"text", @"url", @"image", @"images", @"video", @"videos", @"publishDate", @"author", @"authors", @"language"];
  return [optionalProperties containsObject:propertyName];
}

@end
