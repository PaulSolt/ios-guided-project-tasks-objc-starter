//
//  LSITask.m
//  Tasks
//
//  Created by Paul Solt on 12/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"

// Class extension (anonymous category)
// Private interface (instance variables, properties, methods)
@interface LSITask() {
	// Instance variables
	NSString *_title;
	
}
// Private Properties

// Private Methods

@end


@implementation LSITask

// TODO: Add a LSITask initializer (3 properties)

// If we implement both setter/getter, we must create
// the backing instance variable
- (void)setTitle:(NSString *)title {
	// willSet / didSet
	// set the value
	NSLog(@"setTitle: %@", title);
	_title = title;
}

- (NSString *)title {
	return _title;
}


@end
