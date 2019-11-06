//
//  LSITaskController.h
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward declare
@class LSITask;

@interface LSITaskController : NSObject

// Data encapsulation (we want the object to own it's own information)
// 1. Make properties readonly if they don't need to be modified externally
// 2. Make methods to add/remove data

// array of tasks
@property (nonatomic, readonly) NSArray *tasks;
// Don't need copy, because there is no setter

// BUG: class doesn't autocomplete in property
@property (nonatomic, class, readonly) int totalTasksCreated;

//+ (int)totalTasksCreated;

// Public methods

- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

@end
