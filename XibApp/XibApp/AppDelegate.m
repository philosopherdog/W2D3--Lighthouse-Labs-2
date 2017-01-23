//
//  AppDelegate.m
//  XibApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  
  ViewController1 *vc1 = [ViewController1 new];
  vc1.data = @"Some test data from the App Delegate";
//  nav.viewControllers = @[vc1];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc1];

  [self.window makeKeyAndVisible];
  return YES;
}


@end
