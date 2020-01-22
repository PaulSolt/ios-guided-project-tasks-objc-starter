//
//  NSString+LSIRepeatString.h
//  Tasks
//
//  Created by Paul Solt on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Category = Extension in Swift
// We can add new methods to an existing class
@interface NSString (LSIRepeatString)

// Repeat a string 3x
- (NSString *)lsi_repeatString;

@end
