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
// readonly = getter, no setter

// FUTURE: encapsulate tasks (add a add/remove method)

- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

@end

