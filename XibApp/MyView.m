//
//  MyView.m
//  XibApp
//
//  Created by steve on 2017-01-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "MyView.h"

@interface MyView()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation MyView

- (void)setData:(NSString *)data {
  self.label.text = data;
  _data = data;
}

@end
