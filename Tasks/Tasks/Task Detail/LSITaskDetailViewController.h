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

@property LSITask *task;
@property LSITaskController *taskController;
@end

