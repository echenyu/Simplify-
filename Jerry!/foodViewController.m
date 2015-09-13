//
//  foodViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "foodViewController.h"
#import "orderConfirmedViewController.h"

@implementation foodViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [_foodImageView setImage: _foodImage];
    self.navigationItem.hidesBackButton = YES;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    orderConfirmedViewController *destination = [segue destinationViewController];
    
    [destination setFoodImage:_foodImage];
}

-(IBAction)noButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
