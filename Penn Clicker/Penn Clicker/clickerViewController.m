//
//  clickerViewController.m
//  Penn Clicker
//
//  Created by Chenyang  on 2/15/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "clickerViewController.h"

@interface clickerViewController ()

@end

@implementation clickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *myURL = [NSURL URLWithString:@"http://1-dot-myclickerapp.appspot.com"];
    NSURLRequest *myRequest =[NSURLRequest requestWithURL:myURL];
    [myWebView loadRequest:myRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
