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

@property (nonatomic, readonly) NSArray *tasks;
@property (nonatomic, class, readonly) int taskCount; // TODO: Add getter/class variable (static)

// readonly = getter, no setter


/*
nonatomic  -> DEFAULT setting: you need to overide the setter/getter
atomic*

readwrite*		-> Creates a setter/getter  setName:  name
readonly		-> Creates a getter		name

@property BOOL hidden;

getter=		-> rename the generated getter getter=isHidden		task.isHidden   (task.hidden???)
setter=		-> rename the setter

copy			-> return a copy of the object (NSMutableString (var) vs. NSString (let))
			   -> NSString/NSArray allows use copy
assign*		-> Used for all primitives (int, float)

// Retain Cycles
strong
weak

// Manual Reference Counting (not ARC)
retain
unsafe_unretained
*/



- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

// - = instance method
//
// + = class method

//+ (int)taskCount;


@end

