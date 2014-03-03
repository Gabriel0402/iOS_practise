//
//  VIOSViewController.h
//  ImageGrid
//
//  Created by Chenyang  on 3/1/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NSGAlleryDelegate <NSObject>
@optional
- (void)imageSelected:(UIImageView*)image;
@end


@interface VIOSViewController : UIViewController

- (id)initWithImages:(NSArray *)images;

@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSMutableArray *imageViews;
@property (nonatomic, strong) id <NSGAlleryDelegate> delegate;

@end
