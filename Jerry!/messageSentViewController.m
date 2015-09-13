//
//  messageSentViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "messageSentViewController.h"

@implementation messageSentViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.imageView setImage:[UIImage imageNamed:@"checkmark.png"]];
    self.navigationItem.hidesBackButton = YES;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController popToRootViewControllerAnimated:YES];
    });
}
@end
