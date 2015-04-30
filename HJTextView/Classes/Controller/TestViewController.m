//
//  TestViewController.m
//  HJTextView
//
//  Created by Jeffery He on 15/4/29.
//  Copyright (c) 2015年 Jeffery He. All rights reserved.
//

#import "TestViewController.h"
#import "HJTextView.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    HJTextView *textView = [[HJTextView alloc] init];
    textView.frame = CGRectMake(0.0f, 0.0f, 300.0f, 100.0f);
    textView.center = self.view.center;
    textView.placeHolder = @"this is placeholder for UITextView";
    textView.font = [UIFont systemFontOfSize:20.0f];
    textView.holderColor = [UIColor greenColor];
    [textView becomeFirstResponder];
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
