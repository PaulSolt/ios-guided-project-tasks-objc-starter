//
//  NSString+LSIRepeatString.m
//  Tasks
//
//  Created by Paul Solt on 12/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "NSString+LSIRepeatString.h"

@implementation NSString (LSIRepeatString)


// "Bob" -> "BobBobBob"

// Exercise: return a string 3 times

- (NSString *)repeatString {
	return [NSString stringWithFormat:@"%@%@%@", self, self, self];
}

@end
