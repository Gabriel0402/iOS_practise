//
//  VIOSViewController.m
//  ipadWeb
//
//  Created by Chenyang  on 2/23/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "VIOSViewController.h"

@interface VIOSViewController ()

@end

@implementation VIOSViewController
@synthesize inputStream,outputStream;
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://www.amazon.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self initNetworkCommunication];
    [self joinChat];
    [self sendMessage];
}

- (void) initNetworkCommunication {
	
	CFReadStreamRef readStream;
	CFWriteStreamRef writeStream;
	CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"158.130.105.224", 1234, &readStream, &writeStream);
	
	inputStream = (__bridge NSInputStream *)readStream;
	outputStream = (__bridge NSOutputStream *)writeStream;
	[inputStream setDelegate:self];
	[outputStream setDelegate:self];
	[inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[inputStream open];
	[outputStream open];
	
}

- (void) joinChat{
    NSString *response  = [NSString stringWithFormat:@"iam:ipad"];
	NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
	[outputStream write:[data bytes] maxLength:[data length]];
}

- (void) sendMessage{
    NSString *response  = [NSString stringWithFormat:@"msg:HELLO WORLD"];
	NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
	[outputStream write:[data bytes] maxLength:[data length]];
}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
    
	NSLog(@"stream event %i", streamEvent);
	
	switch (streamEvent) {
			
		case NSStreamEventOpenCompleted:
			NSLog(@"Stream opened");
			break;
		case NSStreamEventHasBytesAvailable:
            
			if (theStream == inputStream) {
				
				uint8_t buffer[1024];
				int len;
				
				while ([inputStream hasBytesAvailable]) {
					len = [inputStream read:buffer maxLength:sizeof(buffer)];
					if (len > 0) {
						
						NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
						
						if (nil != output) {
                            
							NSLog(@"server said: %@", output);
                            NSLog(@"the substring:%@",[output substringWithRange:NSMakeRange(0, 5)]);
                            if([[output substringWithRange:NSMakeRange(0, 4)] isEqualToString:@"High"])
                            {
                                NSLog(@"----------THE MESSAGE IS EQUAL---------");
                                [self showWebPage1];
                            }
                            if([[output substringWithRange:NSMakeRange(0, 4)] isEqualToString:@"Hand"])
                            {
                                NSLog(@"----------THE MESSAGE IS EQUAL---------");
                                [self showWebPage2];
                            }
                            if([[output substringWithRange:NSMakeRange(0, 6)] isEqualToString:@"iPhone"])
                            {
                                NSLog(@"----------THE MESSAGE IS EQUAL---------");
                                [self showWebPage3];
                            }
                            
						}
					}
				}
			}
			break;
            
			
		case NSStreamEventErrorOccurred:
			
			NSLog(@"Can not connect to the host!");
			break;
			
		case NSStreamEventEndEncountered:
            
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            // [theStream release];
            theStream = nil;
			
			break;
		default:
			NSLog(@"Unknown event");
	}
    
}

- (void) showWebPage{
    [super viewDidLoad];
    NSLog(@"----------html initialize---------");
    NSURL *url=[NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request= [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void) showWebPage1{
    [super viewDidLoad];
    NSLog(@"----------html initialize---------");
    NSURL *url=[NSURL URLWithString:@"http://www.amazon.com/Zebra-Pink-High-Heel-Chair/dp/B008FOPDQY/ref=sr_1_5?ie=UTF8&qid=1393209871&sr=8-5&keywords=high-hell+shoes"];
    NSURLRequest *request= [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}
- (void) showWebPage2{
    [super viewDidLoad];
    NSLog(@"----------html initialize---------");
    NSURL *url=[NSURL URLWithString:@"http://www.amazon.com/MG-Collection-Glamour-Padlock-Shoulder/dp/B0069F61NU/ref=sr_1_2?ie=UTF8&qid=1393209013&sr=8-2&keywords=handbag"];
    NSURLRequest *request= [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}
- (void) showWebPage3{
    [super viewDidLoad];
    NSLog(@"----------html initialize---------");
    NSURL *url=[NSURL URLWithString:@"http://www.amazon.com/Apple-iPhone-16GB-Black-Verizon/dp/B004ZLV5UE/ref=sr_1_1?ie=UTF8&qid=1393209040&sr=8-1&keywords=iphone"];
    NSURLRequest *request= [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
