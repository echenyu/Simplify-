//
//  contactPageViewController.m
//  
//
//  Created by Eric Yu on 9/12/15.
//
//

#import "contactPageViewController.h"
#import <Parse/Parse.h>

@implementation contactPageViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];
    [self setup];
    [self setupImages];
}

-(void)setup {
    UIImage *faceImage = [UIImage imageNamed:@"homebutton.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
    self.title = @"Message";

}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)setupImages {
    [self.profileImage setImage:_profile];
    self.nameLabel.text = _name;
}

-(IBAction)sendText:(id)sender {
    PFObject *maidService = [PFObject objectWithClassName:@"user_calls"];
    [maidService setObject:@"I've been thinking of you :) - From Grammy" forKey:@"call_script"];
    [maidService setObject:@"maid" forKey:@"call_type"];
    
    [maidService saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
            
        } else {
            // There was a problem, check error.description
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"There was an error with your food request. Try again later." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alert show];
        }
    }];

    if([_name isEqualToString:@"Arwin Wang"]) {
        [maidService setObject:@"+17348348105" forKey:@"phone_number"];
    } else if([_name isEqualToString:@"Alex Cox"]) {
        [maidService setObject:@"+12405432074" forKey:@"phone_number"];

    } else if([_name isEqualToString:@"Andrew Hoang"]) {
        [maidService setObject:@"+19787954939" forKey:@"phone_number"];

    } else if([_name isEqualToString:@"Eric Yu"]) {
        [maidService setObject:@"+16168561490" forKey:@"phone_number"];

    } 
}
@end
