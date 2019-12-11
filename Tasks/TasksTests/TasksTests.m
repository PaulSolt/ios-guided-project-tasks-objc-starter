//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "../Tasks/Task Model/LSITask.h"
//#import "LSITask.h"
#import "../Tasks/LSITask.h"
#import "NSString+LSIRepeatString.h"
#import "LSITaskController.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

- (void)testCode {
	
	// String literal
	NSString *name = @"Wash dishes";
	NSString *toy = [[NSString alloc] initWithFormat:@"%@ Ball", @"Red"];
//	print("Task: \(name)")  // %@ = object token
	printf("\n");
	NSLog(@"Task: %@", name);
	NSLog(@"%@", toy);
	
	// c printing function (print formatted)
	printf("Task: %s\n", name.UTF8String);   // %s = c-string
	//printf("Task: %s\n", task.description.UTF8String);   // %s = c-string

	
	LSITask *task = [[LSITask alloc] init];
	
	// Properties
	// setter / getter (dot syntax)
	// setter and getter methods (call method names)
	
	task.date = [NSDate date];  // class method
	task.notes = @"The keyboard #2 batteries are dead";
	task.title = @"Change keyboard batteries";
	
	printf("Task #2: %s\n", task.title.UTF8String);
	printf("\n");
	
	[task setTitle:@"Read Startup book"];
	[task setDate:[NSDate dateWithTimeIntervalSinceNow:60]];
	NSDate *date2 = [task date];
	
	
	NSString *parrot = @"Hello";
	NSLog(@"Parrot: %@", [parrot repeatString]);
	
	LSITaskController *controller = [[LSITaskController alloc] init];
	
	// Instance property
	NSArray *tasks = controller.tasks;
//	[controller taskCount]; // taskCount is a class method
	// Class method
	int totalCount = [LSITaskController taskCount];
	
}

@end
