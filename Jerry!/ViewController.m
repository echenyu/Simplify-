
//
//  ViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/11/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "ViewController.h"
#import <OAuthiOS/OAuthiOS.h>


@import AddressBook;


@interface ViewController ()

@property(nonatomic, strong) NSDictionary *accesstoken;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"Home.png"];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
    // Do any additional setup after loading the view, typically from a nib.
    [self setup];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setup {
    UIImage *faceImage = [UIImage imageNamed:@"Settings.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(settings) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
}

-(void)settings {
    [self performSegueWithIdentifier:@"settingsSegue" sender:self];
}

//// Handles the results of a successful authentication
//- (void)didReceiveOAuthIOResponse:(OAuthIORequest *)request {
//    NSLog(@"HELLOSLDKFJSLDFJK");
//    self.accesstoken = [request getCredentials];
//    NSLog(@"%@", self.accesstoken);
//    NSLog(@"%@",[self.accesstoken objectForKey:@"access_token"]);
//    
//    NSMutableDictionary *fields = [[NSMutableDictionary alloc] init];
//    [fields setObject: @"42.292768" forKey:@"latitude"];
//    [fields setObject:@"-83.715455" forKey:@"longitude"];    
//
//
//}
//
//// Handle errors in the case of an unsuccessful authentication
//- (void)didFailWithOAuthIOError:(NSError *)error {
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Authentication Failed" message:@"To use uber in this application, please grant permissions" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//    [alert show];
//
//
//    return;
//    
//}
//
//
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//}



@end
