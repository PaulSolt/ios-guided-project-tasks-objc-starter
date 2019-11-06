//
//  LSITasksTableViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"

// Class Extension
@interface LSITasksTableViewController ()

// Private properties
@property (nonatomic, readonly) NSDateFormatter *dateFormatter;
@property (nonatomic) LSITaskController *controller;
@end

@implementation LSITasksTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		_controller = [[LSITaskController alloc] init];
	}
	return self;
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.controller.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
	
	LSITask *task = self.controller.tasks[indexPath.row];
	
	cell.textLabel.text = task.name;
	cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.dueDate];
	
	return cell;
}

// MARK: - Navigation

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
