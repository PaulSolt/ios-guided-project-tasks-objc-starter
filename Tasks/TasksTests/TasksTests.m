//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "../Tasks/Task Model/LSITask.h"
#import "LSITask.h"
#import "LSITaskController.h"
#import "NSString+LSIRepeatString.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

- (void)testCode {
	
	LSITask *task = [[LSITask alloc] init];

	[task setName:@"Wash the car"];
	
	NSLog(@"Task: %@", task.name);
	
//	task._priority = 3; // Not a public instance variable
	
	LSITaskController *controller = [[LSITaskController alloc] init];
	
	//taskController.tasks = @[];  // Can't assign if it's readonly
	NSArray *tasks = controller.tasks;

	[controller addTask:task];

	NSLog(@"Tasks: %@", controller.tasks);

	[controller removeTask:task];

	NSLog(@"Tasks: %@", controller.tasks);

	
	NSString *parrot = @"Hello";
	NSLog(@"Parrot: %@", [parrot repeatString]);
	
	
	// Class method / property
//	task.totalTasksCreated // class method error (task is an instance)
	
	NSLog(@"Tasks created: %d", LSITaskController.totalTasksCreated);
}

@end
