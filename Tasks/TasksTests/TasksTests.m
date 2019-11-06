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

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

- (void)testCode {
	
	LSITask *task = [[LSITask alloc] init];

	[task setName:@"Wash the car"];
	
	NSLog(@"Task: %@", task.name);
	
//	task._priority = 3; // Not a public instance variable

}

@end
