//
//  LSITaskController.m
//  Tasks
//
//  Created by Paul Solt on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"
#import "LSITask.h"

// Class Extension - anonymous category
@interface LSITaskController() {
	// private instance variables
}

// private properties
@property (nonatomic) NSMutableArray *internalTasks;

// private methods

- (void)createTestData;

@end


@implementation LSITaskController

// Underscores = instance variable (not a property)
// 1. Use underscore when you're in the init/dealloc
// 2. For KVO/KVC use self. for all property accesses

- (instancetype)init {
	self = [super init];
	if (self) {
		// How do I initialize internalTasks?
		_internalTasks = [[NSMutableArray alloc] init];
		
		// TODO: Remove for production (testing only)
		[self createTestData];
	}
	return self;
}

// Computed property for tasks (external / public)
- (NSArray *)tasks {
	// copy will convert NSMutableArray into an NSArray
	return [self.internalTasks copy]; // let, immutable NSArray
}

// Add and remove elements from the NSMutableArray

- (void)addTask:(LSITask *)task {
	// id = AnyObject, nonnull = not optional = not nil
	[self.internalTasks addObject:task];
	
	// Save to database
}

- (void)removeTask:(LSITask *)task {
	[self.internalTasks removeObject:task];
}

// Helper function for testing
- (void)createTestData {
	LSITask *task1 = [[LSITask alloc] initWithName:@"Walk the dog"
											  date:[NSDate date]
											  note:@"Row needs some exercise"];
	
	LSITask *task2 = [[LSITask alloc] initWithName:@"Take the trash out"
											  date:[NSDate dateWithTimeIntervalSinceNow:60*60*24*7]
											  note:@"Cleanup before the party"];
	
	[self addTask:task1];
	[self addTask:task2];
}

@end
