//
//  UIView+Shimmer.m
//
//  Created by Vikram Kriplaney on 23/05/14.
//  Copyright (c) 2014 iPhonso GmbH. All rights reserved.
//

#import "UIView+Shimmer.h"

@implementation UIView (Shimmer)
- (void)startShimmering
{
    id light = (id)[UIColor colorWithWhite:0 alpha:0.1].CGColor;
    id dark  = (id)[UIColor blackColor].CGColor;

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.colors = @[dark, light, dark];
    gradient.frame = CGRectMake(-self.bounds.size.width, 0, 3*self.bounds.size.width, self.bounds.size.height);
    gradient.startPoint = CGPointMake(0.0, 0.5);
    gradient.endPoint   = CGPointMake(1.0, 0.525); // slightly slanted forward
    gradient.locations  = @[@0.4, @0.5, @0.6];
    self.layer.mask = gradient;

    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"locations"];
    animation.fromValue = @[@0.0, @0.1, @0.2];
    animation.toValue   = @[@0.8, @0.9, @1.0];

    animation.duration = 1.5;
    animation.repeatCount = HUGE_VALF;
    [gradient addAnimation:animation forKey:@"shimmer"];
}

- (void)stopShimmering
{
    self.layer.mask = nil;
}
@end
