//
//  ViewController4.m
//  ProgrammaticApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController4.h"
#import "ViewController5.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
  [super viewDidLoad];
  self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTapped)];
  self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneTapped)];
  self.view.backgroundColor = [UIColor purpleColor];
}

- (void)doneTapped {
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addTapped {
  ViewController5 *vc5 = [ViewController5 new];
  [self.navigationController pushViewController:vc5 animated:YES];
}


@end
