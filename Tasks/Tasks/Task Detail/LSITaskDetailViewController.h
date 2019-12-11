//
//  LSITaskDetailViewController.h
//  Tasks
//
//  Created by Andrew R Madsen on 10/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSITask;
@class LSITaskController;

@interface LSITaskDetailViewController : UIViewController

// Use dependency injection to pass data into the detail view
@property LSITask *task;
@property LSITaskController *taskController;

@end

