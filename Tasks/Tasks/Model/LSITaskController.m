//
//  LSITaskController.m
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"
#import "LSITask.h"

@interface LSITaskController ()

// Private properties
@property (nonatomic, readwrite) NSMutableArray *internalTasks;

@end

@implementation LSITaskController

// static is required for a class variable
static int _totalTasksCreated = 0;

+ (int)totalTasksCreated {
	return _totalTasksCreated;
}

- (instancetype)init {
	self = [super init];
	if (self) {
		_internalTasks = [[NSMutableArray alloc] init];
		// TODO: Test data (remove for production)
		[self addTestData];
	}
	return self;
}

- (void)addTestData {
	
	LSITask *task1 = [[LSITask alloc] init];
	task1.name = @"Take out the trash";
	task1.notes = @"It smells in the kitchen!";
	task1.dueDate = [NSDate date];
	
	LSITask *task2 = [[LSITask alloc] init];
	task2.name = @"Walk the dog";
	task2.notes = @"Row needs a bathroom break";
	task2.dueDate = [NSDate dateWithTimeIntervalSinceNow:60 * 60 * 4]; // ~ 4 hours
	
	[_internalTasks addObjectsFromArray:@[task1, task2]];
}

- (void)addTask:(LSITask *)task {
	[self.internalTasks addObject:task];
	_totalTasksCreated += 1;
}

- (void)removeTask:(LSITask *)task {
	[self.internalTasks removeObject:task];
}

// override the tasks getter
- (NSArray *)tasks {
	return [self.internalTasks copy];
}


@end
