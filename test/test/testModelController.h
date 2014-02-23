//
//  testModelController.h
//  test
//
//  Created by Chenyang  on 2/11/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@class testDataViewController;

@interface testModelController : NSObject <UIPageViewControllerDataSource>

- (testDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(testDataViewController *)viewController;

@end
