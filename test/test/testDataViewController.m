//
//  testDataViewController.m
//  test
//
//  Created by Chenyang  on 2/11/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "testDataViewController.h"

@interface testDataViewController ()

@end

@implementation testDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
