//
//  LSITasksTableViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITaskDetailViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"

// Class Extension
@interface LSITasksTableViewController ()

// Private properties
@property (nonatomic, readonly) NSDateFormatter *dateFormatter;
@property (nonatomic) LSITaskController *taskController;
@end

@implementation LSITasksTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		_taskController = [[LSITaskController alloc] init];
	}
	return self;
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.taskController.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
	
	LSITask *task = self.taskController.tasks[indexPath.row];
	
	cell.textLabel.text = task.name;
	cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.dueDate];
	
	return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    if (editingStyle == UITableViewCellEditingStyleDelete) {
        LSITask *task = self.taskController.tasks[indexPath.row];
        [self.taskController removeTask:task];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// MARK: - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
// ShowTaskDetail = show an existing
// ShowCreateTask = create brand new task and add it
    if ([segue.identifier isEqualToString:@"ShowTaskDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        LSITaskDetailViewController *detailVC = segue.destinationViewController;
        detailVC.taskController = self.taskController;
        detailVC.task = self.taskController.tasks[indexPath.row];
    }

    if ([segue.identifier isEqualToString:@"ShowCreateTask"]) {
        LSITaskDetailViewController *detailVC = segue.destinationViewController;
        detailVC.taskController = self.taskController;
    }
}

// MARK: - Properties

@synthesize dateFormatter = _dateFormatter;
- (NSDateFormatter *)dateFormatter
{
    if (!_dateFormatter) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateStyle = NSDateFormatterShortStyle;
        _dateFormatter.timeStyle = NSDateFormatterNoStyle;
    }
    return _dateFormatter;
}

@end
