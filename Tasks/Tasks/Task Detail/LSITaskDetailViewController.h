//
//  LSITaskDetailViewController.h
//  Tasks
//
//  Created by Andrew R Madsen on 10/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSITaskController;
@class LSITask;

@interface LSITaskDetailViewController : UIViewController

@property (nonatomic) LSITaskController *taskController;
@property (nonatomic) LSITask *task;

@end

