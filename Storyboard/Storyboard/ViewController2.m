//
//  ViewController2.m
//  Storyboard
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController2

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupAddButton];
  self.title = @"View Controller 2";
  self.label.text = self.data;
}

- (void)setupAddButton {
  UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTapped)];
  self.navigationItem.rightBarButtonItem = button;
}

- (void)addTapped {
  // asks the storyboard to instantiate this vc
  [self performSegueWithIdentifier:@"ViewController3" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"ViewController3"]) {
    ViewController3 *vc3 = segue.destinationViewController;
    vc3.data = @"I just came from VC2";
  }
}

- (void)dealloc {
  
}


@end
