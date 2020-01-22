//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "../Tasks/Model/LSITask.h"  // #import bug? may need relative path to a Model group
#import "LSITask.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

// NOTE: For any file you want to use
// 1. Add the .m file to your unit test target
// 2. Import the file above
// 3. If you use a framework like MapKit, you may need to add the framework to your main target

- (void)testCode {
	printf("Use an Objective-C unit test like a Playground scratch pad\n\n");
	
	// Create a task model object
	LSITask *task = [[LSITask alloc] initWithName:@"Walk the Dog" date:[NSDate now] note:@"Row needs to get outside"];
	
	NSLog(@"Created a new task: %@", task);
	
//	task.identifier // not available as a property
	
	//task = nil; // ARC will clean up the memory and run dealloc
	
	// Try creating other objects or calling methods to verify you understand
	// Objective-C code.

}

@end
