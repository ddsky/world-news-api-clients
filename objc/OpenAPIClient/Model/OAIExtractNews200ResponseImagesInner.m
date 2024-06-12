#import "OAIExtractNews200ResponseImagesInner.h"

@implementation OAIExtractNews200ResponseImagesInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"width": @"width", @"title": @"title", @"url": @"url", @"height": @"height" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"width", @"title", @"url", @"height"];
  return [optionalProperties containsObject:propertyName];
}

@end
