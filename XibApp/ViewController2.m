//
//  ViewController2.m
//  XibApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController2.h"
#import "MyView.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet MyView *bottomView;
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
  self.label.text = self.data;
  MyView *myView = [[NSBundle mainBundle] loadNibNamed:@"MyView" owner:nil options:nil][0];
  myView.data = @"Yo data";
  myView.frame = self.bottomView.frame;
  [self.view addSubview:myView];
}


@end
