//
//  hello_worldDetailViewController.m
//  hello_world
//
//  Created by Chenyang  on 2/7/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "hello_worldDetailViewController.h"

@interface hello_worldDetailViewController ()
- (void)configureView;
@end

@implementation hello_worldDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
