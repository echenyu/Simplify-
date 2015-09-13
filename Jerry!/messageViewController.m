//
//  messageViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "messageViewController.h"
#import "contactPageViewController.h"

@implementation messageViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    self.pic1.layer.cornerRadius = self.pic1.frame.size.width / 2;
    self.pic1.layer.borderWidth = 3.0;
    self.pic1.layer.borderColor = [[UIColor whiteColor]CGColor];
    self.pic1.clipsToBounds = YES;
    
    self.pic2.layer.cornerRadius = self.pic2.frame.size.width / 2;
    self.pic2.clipsToBounds = YES;
    self.pic2.layer.borderWidth = 3.0;
    self.pic2.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    self.pic3.layer.cornerRadius = self.pic3.frame.size.width / 2;
    self.pic3.clipsToBounds = YES;
    self.pic3.layer.borderWidth = 3.0;
    self.pic3.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    
    self.pic4.layer.cornerRadius = self.pic4.frame.size.width / 2;
    self.pic4.clipsToBounds = YES;
    self.pic4.layer.borderWidth = 3.0;
    self.pic4.layer.borderColor = [[UIColor whiteColor]CGColor];
    

    
    self.unreadMessages.layer.cornerRadius = self.unreadMessages.frame.size.width / 2;
    self.unreadMessages.clipsToBounds = YES;
    // Do any additional setup after loading the view, typically from a nib.
    
    self.rectangle1.layer.cornerRadius = self.rectangle1.frame.size.width / 37;
    self.rectangle1.clipsToBounds = YES;
    self.rectangle2.layer.cornerRadius = self.rectangle2.frame.size.width/37;
    self.rectangle2.clipsToBounds = YES;
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
    self.title = @"Message";

}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(IBAction)buttonPress:(id)sender {
    [self performSegueWithIdentifier:@"segue1" sender:sender];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    contactPageViewController *destination = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"pic1"]) {
        [destination setProfile:[UIImage imageNamed:@"arwin.jpg"]];
        [destination setName: @"Arwin Wang"];
    } else if([[sender currentTitle] isEqualToString:@"pic2"]) {
        [destination setProfile:[UIImage imageNamed:@"alex.jpg"]];
        [destination setName: @"Alex Cox"];

    } else if([[sender currentTitle] isEqualToString:@"pic3"]) {
        [destination setProfile:[UIImage imageNamed:@"andrew.jpg"]];
        [destination setName: @"Andrew Hoang"];

    } else if([[sender currentTitle] isEqualToString:@"pic4"]) {
        [destination setProfile:[UIImage imageNamed:@"eric.jpg"]];
        [destination setName: @"Eric Yu"];

    }
}
@end
