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

#pragma mark - Initialization

- (instancetype)init
{
  self = [super init];
  if (self) {
    
  }
  return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    
  }
  return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    
  }
  return self;
}

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

#pragma mark - ViewController Lifecycle

- (void)awakeFromNib {
  [super awakeFromNib];
  
}
- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
}

- (void)viewDidLayoutSubviews {
  [super viewDidLayoutSubviews];
}

- (void)dealloc {
  
}

- (IBAction)buttonTappe:(UIButton *)sender {
}








@end
