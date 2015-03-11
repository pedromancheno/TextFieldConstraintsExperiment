//
//  ViewController.m
//  TextFieldConstraintsExperiment
//
//  Created by Pedro Mancheno on 11/03/15.
//  Copyright (c) 2015 Pedro Mancheno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstTextField;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.firstTextField addTarget:self
                  action:@selector(textFieldDidChange)
        forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldDidChange
{
    [self.firstTextField invalidateIntrinsicContentSize];
}



@end
