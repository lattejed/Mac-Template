//
//  main.m
//  Mac-Template
//
//  Created by Matthew Smith on 2/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "validatereceipt.h"

// Replace these with the actual app values
const NSString *global_bundleVersion = @"1.0";
const NSString *global_bundleIdentifier = @"com.example.xxxxxxxx";

int main(int argc, char *argv[]) {
	
	BOOL shouldExit = NO;
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
#ifndef USE_SAMPLE_RECEIPT
	NSString *pathToReceipt = [[[NSBundle mainBundle] bundlePath] 
							   stringByAppendingPathComponent:@"Contents/_MASReceipt/receipt"];
#else
	// Apple's provided sample (saved on desktop)
	NSString *pathToReceipt = @"~/Desktop/receipt";
#endif
	
	if (!validateReceiptAtPath(pathToReceipt))
		shouldExit = YES;
	else 
		NSLog(@"Receipt at %@ Ok!", pathToReceipt);
	[pool drain];
	if (shouldExit) exit(173);
	
    return NSApplicationMain(argc,  (const char **) argv);
}
