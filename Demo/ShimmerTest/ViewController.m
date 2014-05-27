//
//  ViewController.m
//  ShimmerTest
//
//  Created by Vikram Kriplaney on 23/05/14.
//  Copyright (c) 2014 iPhonso GmbH. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Shimmer.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.testLabel startShimmering];
//    [self.backgroundImageView startShimmering];
}

- (IBAction)didToggleSwitch:(UISwitch *)aSwitch
{
    if (aSwitch.on) {
        [self.testLabel startShimmering];
    } else {
        [self.testLabel stopShimmering];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
