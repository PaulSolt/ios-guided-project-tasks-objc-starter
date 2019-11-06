//
//  LSITaskController.m
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"

@interface LSITaskController ()

// Private properties
@property (nonatomic, readwrite) NSMutableArray *internalTasks;

@end

@implementation LSITaskController

- (instancetype)init {
	self = [super init];
	if (self) {
		_internalTasks = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void)addTask:(LSITask *)task {
	[self.internalTasks addObject:task];
}

- (void)removeTask:(LSITask *)task {
	[self.internalTasks removeObject:task];
}

// override the tasks getter
- (NSArray *)tasks {
	return [self.internalTasks copy];
}


@end
