//
//  JSONEntity.h
//  
//  QQ:290994669 
//  Created by danal on 7/3/15.
//  Copyright (c) 2015 danal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JSONEntity)

/** Get all property names */
+ (NSArray *)getPropertyNames:(id)obj;

/**
 * Convert json to an entity
 * @param json Json data
 * @pararm map Used to map a key to a Class
 */
+ (instancetype)fromJSON:(NSData *)json map:(NSDictionary *)classMap;

/**
 * Convert a dictionary to an entity
 * @param d Dictionary data
 * @pararm map Used to map a key to a Class. 
 *              e.g. @{@"a":@"AAA",@"list":@"BBB"},
 *              'a' is a key in the dictionary, and 'AAA' is the class name;
 *              'list' is an array, and 'BBB' is the class name of the element in the array
 */
+ (instancetype)fromDict:(NSDictionary *)d map:(NSDictionary *)classMap;

/**
 * Convert to json
 */
- (NSData *)toJSON;

/**
 * Convert to dictionary
 */
- (NSDictionary *)toDict;

/**
 * Print the key/value pairs
 */
- (void)printObject;

@end
