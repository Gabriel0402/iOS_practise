//
//  VIOSViewController.h
//  CollectionApp
//
//  Created by Chenyang  on 3/1/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VIOSViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) NSMutableArray *carimages;

@end
