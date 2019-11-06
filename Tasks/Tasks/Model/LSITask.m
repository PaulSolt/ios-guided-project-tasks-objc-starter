//
//  LSITask.m
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"

// Class Extension (Anonymous Category)
// Private properties, instance variables, and method declarations
@interface LSITask () {
	// Private instance variables
	NSString *_name;
	int _priority;  // 1 2 3
}

// Private properties

// Private Outlets

// Private Methods

@end


@implementation LSITask

// @property (nonatomic, copy) NSString *name;
// Property Rule: If you overide both setter/getter methods,
//  you must provide the backing store for the property

// Init/Property Rule: Always use self.name instead of _name, unless you're in the init, setter, or getter

- (NSString *)name {
	return _name;
}

- (void)setName:(NSString *)name {
	_name = [name copy];
}



@end
