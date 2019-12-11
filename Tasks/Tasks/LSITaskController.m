//
//  LSITaskController.m
//  Tasks
//
//  Created by Paul Solt on 12/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"
#import "LSITask.h"

@interface LSITaskController ()
// Private properties

@property NSMutableArray *internalTasks;

@end

@implementation LSITaskController

// Logic and code details

// init
- (instancetype)init {
	self = [super init];
	if (self) {
		_internalTasks = [[NSMutableArray alloc] init];
	}
	return self;
}

// computed property
- (LSITask *)tasks {
	return [self.internalTasks copy];
}

// methods

- (void)addTask:(LSITask *)task {
	[self.internalTasks addObject:task];
}

- (void)removeTask:(LSITask *)task {
	[self.internalTasks removeObject:task];
}

@end
