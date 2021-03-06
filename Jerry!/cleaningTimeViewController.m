//
//  cleaningTimeViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "cleaningTimeViewController.h"
#import "confirmedCleaningViewController.h"

@implementation cleaningTimeViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    [self.profilePicture setImage:[UIImage imageNamed:@"Grace.png"]];
    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];
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
    self.title = @"Service";

}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    confirmedCleaningViewController *destination = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"morning"]) {
        [destination setDayString:_dayString];
        [destination setTime:@"9am - 12pm"];
        [destination setTimeOfDay:@"Morning"];
    } else if([[sender currentTitle]isEqualToString:@"afternoon"]) {
        [destination setDayString:_dayString];
        [destination setTime:@"1pm - 4pm"];
        [destination setTimeOfDay:@"Afternoon"];
    }
}

-(IBAction)timeOfDayPressed:(id)sender {
    [self performSegueWithIdentifier:@"cleanConfirm" sender:sender];
}


@end
