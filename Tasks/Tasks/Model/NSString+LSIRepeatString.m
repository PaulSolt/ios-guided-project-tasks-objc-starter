//
//  NSString+LSIRepeatString.m
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "NSString+LSIRepeatString.h"

@implementation NSString (LSIRepeatString)

- (NSString *)repeatString {
	// Options:
	// 1. for loop
	// 2. stringWithFormat
	return [NSString stringWithFormat:@"%@ %@ %@", self, self, self];
}

@end
