//
//  LSITaskController.h
//  Tasks
//
//  Created by Paul Solt on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// All classes in Objc are reference types (sharing address)
// float, int, double are value types (copy on write)

// 1. Forward class declaration - builds faster, helps when files reference
@class LSITask;

// 2. Import the class (generally do this in your .m)
//#import "LSITask.h"

// encapsulation = protect our data
@interface LSITaskController : NSObject

// public properties

@property (readonly, nonatomic) NSArray *tasks;

// public methods

- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

@end
