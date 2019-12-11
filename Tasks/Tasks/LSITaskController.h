//
//  LSITaskController.h
//  Tasks
//
//  Created by Paul Solt on 12/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward class declaration (IOU)
@class LSITask;

@interface LSITaskController : NSObject

// Public properties
// array of tasks

@property (readonly) NSArray *tasks;
@property (class, readonly) int taskCount; // TODO: Add getter/class variable (static)

// readonly = getter, no setter


- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

// - = instance method
//
// + = class method

//+ (int)taskCount;


@end

