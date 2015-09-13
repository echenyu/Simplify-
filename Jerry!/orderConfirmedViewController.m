//
//  orderConfirmedViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "orderConfirmedViewController.h"
#import <Parse/Parse.h>

@implementation orderConfirmedViewController


-(void)viewDidLoad {
    [super viewDidLoad];
    
    [_foodImageView setImage: [UIImage imageNamed:@"checkmark.png" ]];
    self.navigationItem.hidesBackButton = YES;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController popToRootViewControllerAnimated:YES];
    });
    self.title = @"Meals";
    [self getPizza];
}

-(void)getPizza {
    PFObject *foodItem = [PFObject objectWithClassName:@"user_calls"];
    [foodItem setObject:@"cookies" forKey:@"call_script"];
    [foodItem setObject:@"food" forKey:@"call_type"];
    [foodItem setObject:@"+17348348105" forKey:@"phone_number"];

    [foodItem saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
            
        } else {
            // There was a problem, check error.description
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"There was an error with your food request. Try again later." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alert show];
        }
    }];
}


@end
