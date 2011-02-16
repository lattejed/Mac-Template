//
//  Mac-TemplateAppDelegate.m
//  Mac-Template
//
//  Created by Matthew Smith on 2/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}

- (void)applicationWillTerminate:(NSNotification *)notification {
	//[[NSUserDefaults standardUserDefaults] synchronize];
	//NSLog(@"Saved user defaults");
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag {
	[window makeKeyAndOrderFront:nil];
	return YES;
}

@end
