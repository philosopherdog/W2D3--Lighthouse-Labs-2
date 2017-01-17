//
//  AppDelegate.m
//  Storyboard
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // call custom method
  [self passData:@"The App Delegate Passed This In!"];
  return YES;
}

- (void)passData:(NSString *)data {
  // get reference to view controller hierarchy (Never instantiate!)
  UINavigationController *nav = (UINavigationController *)self.window.rootViewController;
  ViewController1 *vc1 = nav.viewControllers.firstObject;
  vc1.data = data;
}


@end
