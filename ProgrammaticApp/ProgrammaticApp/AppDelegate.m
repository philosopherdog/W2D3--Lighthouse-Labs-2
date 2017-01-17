//
//  AppDelegate.m
//  ProgrammaticApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  UITabBarController *tab = [UITabBarController new];
  tab.viewControllers = [self setupViewControllers];
  self.window.rootViewController = tab;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSArray <UIViewController *>*)setupViewControllers {
  NSMutableArray *result = [NSMutableArray new];
  for(NSInteger i = 1; i < 4; ++i) {
    NSString *className = [NSString stringWithFormat:@"ViewController%ld", i];
    UIViewController *vc = [[NSClassFromString(className) alloc] init];
    vc.title = [NSString stringWithFormat:@"title%@", @(i)];
    [result addObject:vc];
  }
  return [result copy];
}
@end
