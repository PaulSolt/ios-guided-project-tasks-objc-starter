//
//  LSITaskDetailViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskDetailViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"

@interface LSITaskDetailViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UISegmentedControl *priorityControl;
@property (nonatomic, strong) IBOutlet UITextView *notesTextView;
@property (nonatomic, strong) IBOutlet UIDatePicker *datePicker;

@end

@implementation LSITaskDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

// MARK: - Properties

- (void)setTask:(LSITask *)task {
    if (task != _task) {
        _task = task;
        [self updateViews];
    }
}

// MARK: - Actions

- (IBAction)saveButtonPressed:(id)sender {
    BOOL isNewTask = self.task == nil;
    
    LSITask *task = self.task ?: [[LSITask alloc] init];
    task.name = self.nameTextField.text;
    task.notes = self.notesTextView.text;
    task.dueDate = self.datePicker.date;
    
    if (isNewTask) {
        [self.taskController addTask:task];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

// MARK: - Private

- (void)updateViews {
    if (!self.isViewLoaded || !self.task) { return; }
    
    self.title = self.task.name;
    self.nameTextField.text = self.task.name;
    self.notesTextView.text = self.task.notes;
    self.datePicker.date = self.task.dueDate;
}

@end
