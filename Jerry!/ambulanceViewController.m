//
//  ambulanceViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "ambulanceViewController.h"

@implementation ambulanceViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
}

-(IBAction)yes:(id)sender {
    NSURL *url = [NSURL URLWithString:@"facetime://ericcyu17@gmail.com"];
    [[UIApplication sharedApplication]openURL:url];
}

-(IBAction)no:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
