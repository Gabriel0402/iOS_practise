//
//  VIOSViewController.m
//  CollectionApp
//
//  Created by Chenyang  on 3/1/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "VIOSViewController.h"
#import "Cell.h"

@interface VIOSViewController ()


@end

@implementation VIOSViewController
{
    
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
    
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _carimages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Cell *myCell=[collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    UIImage *image;
    int row=[indexPath row];
    image=[UIImage imageNamed:_carimages[row]];
    myCell.imageView.image=image;
    return myCell;
    
}

#pragma mark -
#pragma mark UICollectionViewFlowLayoutDelegate

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIImage *image;
    int row = [indexPath row];
    
    image = [UIImage imageNamed:_carimages[row]];
    
    return image.size;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _carimages = [@[@"chevy_small.jpg",
                    @"mini_small.jpg",
                    @"rover_small.jpg",
                    @"smart_small.jpg",
                    @"highlander_small.jpg",
                    @"venza_small.jpg",
                    @"volvo_small.jpg",
                    @"vw_small.jpg",
                    @"ford_small.jpg",
                    @"nissan_small.jpg",
                    @"honda_small.jpg",
                    @"jeep_small.jpg"] mutableCopy];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
