//
//  LSITask.h
//  Tasks
//
//  Created by Paul Solt on 11/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSITask : NSObject

// Property attributes
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *notes;
@property (nonatomic) NSDate *dueDate;

@end


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
