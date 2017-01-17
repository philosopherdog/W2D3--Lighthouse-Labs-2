//
//  ViewController4.m
//  Storyboard
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController4.h"

@interface ViewController4 ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
  self.title = @"View Controller 4";
  self.label.text = self.data;
  [self setupBarButton];
}

- (void)setupBarButton {
  UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneTapped)];
  self.navigationItem.rightBarButtonItem = button;
}

- (void)doneTapped {
  [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
