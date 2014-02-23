//
//  VIOSViewController.h
//  vios
//
//  Created by Chenyang  on 2/22/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VIOSViewController : UIViewController<NSStreamDelegate>{
	NSInputStream	*inputStream;
	NSOutputStream	*outputStream;
    IBOutlet UIWebView *webView;
    
}

@property (nonatomic, retain) NSInputStream *inputStream;
@property (nonatomic, retain) NSOutputStream *outputStream;

- (void) initNetworkCommunication;
- (void) joinChat;
- (void) sendMessage;
- (void) showWebPage;

@end
