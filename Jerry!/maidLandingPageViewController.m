//
//  maidLandingPageViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "maidLandingPageViewController.h"
#import "cleaningTimeViewController.h"

@implementation maidLandingPageViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.profilePicture setImage:[UIImage imageNamed:@"Grace.png"]];
    [self setup];
    

}

-(void)setup {
    UIButton *favButton = [[UIButton alloc] init];
    
    [favButton setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateNormal];
    [favButton addTarget:self action:@selector(favouriteButtonClicked)
        forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *button = [[UIBarButtonItem alloc]
                               initWithCustomView:favButton];
    
    self.navigationItem.rightBarButtonItem = button;
}

-(void)favouriteButtonClicked {
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    cleaningTimeViewController *destination = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"Monday"]) {
        [destination setDayString: @"Monday"];
    }else if([[sender currentTitle] isEqualToString:@"Tuesday"]) {
        [destination setDayString: @"Tuesday"];

    } else if([[sender currentTitle] isEqualToString:@"Wednesday"]){
        [destination setDayString: @"Wednesday"];

    } else if([[sender currentTitle] isEqualToString:@"Thursday"]) {
        [destination setDayString: @"Thursday"];

    } else if([[sender currentTitle] isEqualToString:@"Friday"]) {
        [destination setDayString: @"Friday"];

    } else if([[sender currentTitle] isEqualToString:@"Saturday"]) {
        [destination setDayString: @"Saturday"];

    } else if([[sender currentTitle] isEqualToString:@"Sunday"]) {
        [destination setDayString: @"Sunday"];

    }
    
}

-(IBAction)dayPressed:(id)sender {
    [self performSegueWithIdentifier:@"cleaning" sender:sender];
}
@end
