//
//  ViewController1.m
//  Storyboard
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController1

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"View Controller 1";
  self.label.text = self.data;
}

// The segue is triggered by the storyboard
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"ViewController2"]) {
    ViewController2 *vc2 = segue.destinationViewController;
    vc2.data = @"This was sent from VC1";
  }
}

@end
