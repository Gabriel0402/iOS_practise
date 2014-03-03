//
//  MyCollectionViewController.h
//  CollectionTest
//
//  Created by Chenyang  on 3/1/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewController : UICollectionViewController <UICollectionViewDataSource,UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *carImages;

@end
