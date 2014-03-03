//
//  FirstViewController.m
//  mLab
//
//  Created by Chenyang  on 3/3/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (IBAction)showMenu
{
    [self.sideMenuViewController presentMenuViewController];
}

- (void) viewDidLoad
{
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 0; i <= 11; i++) {
        NSString *fileName = [NSString stringWithFormat:@"%02i.jpg", i];
        [images addObject:[UIImage imageNamed:fileName]];
    }
    for (int i = 0; i <= 11; i++) {
        [images exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform(11)];
    }
    self.images=images;
    [self loadView];
    
}


@end
