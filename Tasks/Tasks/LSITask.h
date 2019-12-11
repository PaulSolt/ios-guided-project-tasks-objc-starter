//
//  LSITask.h
//  Tasks
//
//  Created by Paul Solt on 12/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSITask : NSObject

// Question: What properties do you need to add?

@property NSString *title;
// 1. setter
//     setTitle
// 2. getter
//     title
// 3. instance variable
//     _title

@property NSString *notes;
@property NSDate *date;

@end
