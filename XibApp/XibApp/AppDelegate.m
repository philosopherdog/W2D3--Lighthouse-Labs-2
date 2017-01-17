//
//  AppDelegate.m
//  XibApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  UINavigationController *nav = [UINavigationController new];
  
  nav.viewControllers = @[[ViewController1 new]];
  self.window.rootViewController = nav;
  [self.window makeKeyAndVisible];
  return YES;
}


@end
