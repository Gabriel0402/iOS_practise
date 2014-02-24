//
//  VIOSViewController.h
//  ipadWeb
//
//  Created by Chenyang  on 2/23/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VIOSViewController : UIViewController<NSStreamDelegate>{
    NSInputStream *inputStream;
    NSOutputStream *outputStream;
}
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSInputStream *inputStream;
@property (nonatomic, retain) NSOutputStream *outputStream;

- (void) initNetworkCommunication;
- (void) joinChat;
- (void) sendMessage;
- (void) showWebPage;
- (void) showWebPage1;
- (void) showWebPage2;
- (void) showWebPage3;


@end
