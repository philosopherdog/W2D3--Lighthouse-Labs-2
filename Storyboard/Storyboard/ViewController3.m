//
//  ViewController3.m
//  Storyboard
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController3 ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController3

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"View Controller 3";
  self.label.text = self.data;
  [self setupAddButton];
}

- (void)setupAddButton {
  UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTapped)];
  self.navigationItem.rightBarButtonItem = button;
}

- (void)addTapped {
  // instantiate view controller from the SB
  ViewController4 *vc4 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController4"];
  vc4.data = @"Data sent all the way from VC3";
  [self.navigationController pushViewController:vc4 animated:YES];
}



@end
