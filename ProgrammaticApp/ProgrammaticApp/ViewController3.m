//
//  ViewController3.m
//  ProgrammaticApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor redColor];
  [self setupButton];
}

- (void)setupButton {
  UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
  [button setTitle:@"Next" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
  [button sizeToFit];
  button.center = self.view.center;
}

#pragma mark - Button Action

- (void)buttonTapped:(UIButton *)sender {
  UINavigationController *nav = [UINavigationController new];
  ViewController4 *vc4 = [ViewController4 new];
  nav.viewControllers = @[vc4];
  [self presentViewController:nav animated:YES completion:^{
    NSLog(@"%s", __PRETTY_FUNCTION__);
  }];
}


@end
