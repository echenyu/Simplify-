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
    [self setup];
    
}

-(void)setup {
    UIImage *faceImage = [UIImage imageNamed:@"homebutton.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
    self.title = @"Meals";

}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    orderConfirmedViewController *destination = [segue destinationViewController];
    
    [destination setFoodImage:_foodImage];
    [destination setFoodItem:_foodItem];
}

-(IBAction)noButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
