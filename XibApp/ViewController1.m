//
//  ViewController1.m
//  XibApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@implementation ViewController1

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"First";
}

- (IBAction)nextTapped:(UIButton *)sender {
  ViewController2 *vc2 = [ViewController2 new];
  // passing data
  vc2.data = @"You made it here. Wow!";
  [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)setData:(NSString *)data {
  NSLog(@"%s: Data: %@", __PRETTY_FUNCTION__, self.data);
  _data = data;
}

@end
