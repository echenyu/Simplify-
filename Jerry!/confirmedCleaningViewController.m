//
//  confirmedCleaningViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "confirmedCleaningViewController.h"
#import <Parse/Parse.h>


@implementation confirmedCleaningViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    [self setup];
    self.navigationItem.hidesBackButton = YES;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController popToRootViewControllerAnimated:YES];
    });
}

-(void)setup {
    self.dayLabel.text = self.dayString;
    self.timeOfDayLabel.text = self.timeOfDay;
    self.timeLabel.text = self.time;
    [self.checkMark setImage:[UIImage imageNamed:@"checkmark.png"]];
    [self.profilePicture setImage:[UIImage imageNamed:@"Grace.png"]];
    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];
    self.title = @"Service";

    [self getMaidService];
    
}

-(void)getMaidService {
    NSString *string = [self.dayString stringByAppendingString:self.time];
    NSString *finalString = [string stringByAppendingString:@". You have a request for maid service!"];
    PFObject *maidService = [PFObject objectWithClassName:@"user_calls"];
    [maidService setObject:finalString forKey:@"call_script"];
    [maidService setObject:@"maid" forKey:@"call_type"];
    [maidService setObject:@"+16168561490" forKey:@"phone_number"];
    
    [maidService saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
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
