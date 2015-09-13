
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)emergencyButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Are you in an emergency?" message:nil delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    
    alert.tag = 99;
    [alert show];
}

-(IBAction)login:(id)sender {
    OAuthIOModal *oauthioModal = [[OAuthIOModal alloc] initWithKey:@"JUO-stHq9OdE3NI_RQjyp-O25fY" delegate:self];
    
//    NSMutableDictionary *options = [[NSMutableDictionary alloc] init];
//    [options setObject:@"true" forKey:@"cache"];
    [oauthioModal showWithProvider:@"uber"];
}

// Handles the results of a successful authentication
- (void)didReceiveOAuthIOResponse:(OAuthIORequest *)request {
    NSLog(@"HELLOSLDKFJSLDFJK");
    self.accesstoken = [request getCredentials];
    NSLog(@"%@", self.accesstoken);
    NSLog(@"%@",[self.accesstoken objectForKey:@"access_token"]);
    
    NSMutableDictionary *fields = [[NSMutableDictionary alloc] init];
    [fields setObject: @"42.292768" forKey:@"latitude"];
    [fields setObject:@"-83.715455" forKey:@"longitude"];    


}

// Handle errors in the case of an unsuccessful authentication
- (void)didFailWithOAuthIOError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Authentication Failed" message:@"To use uber in this application, please grant permissions" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];


    return;
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if(alertView.tag == 99) {
        if(buttonIndex == 1) {
            NSLog(@"hello");

            NSString *phoneNumber = [@"tel://" stringByAppendingString:@"6168561490"];
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:phoneNumber]];
        } else {
            return;
        }
    }
}


//
//    NSMutableDictionary *fields2 = [[NSMutableDictionary alloc]init];
//    [fields2 setValue:@"42.292768" forKey:@"start_latitude"];
//    [fields2 setValue: @"-83.715455" forKey:@"start_longitude"];
//    [fields2 setValue:@"41.3" forKey:@"end_latitude"];
//    [fields2 setValue:@"-85.432" forKey:@"end_longitude"];
//    [fields2 setObject: @"5791244c-faf8-4fd6-811e-ed7d2382dcd3" forKey:@"product_id"];
//
//    NSData *data = [NSJSONSerialization dataWithJSONObject:fields2
//                                                   options:NSJSONWritingPrettyPrinted
//                                                     error:nil];
//    NSString *jsonStr = [[NSString alloc] initWithData:data
//                                              encoding:NSUTF8StringEncoding];
//
//    [request post:@"https://sandbox-api.uber.com/v1/requests" withParams:jsonStr success:^(NSDictionary *output, NSString *body, NSHTTPURLResponse *httpResponse)
//     {
//         NSLog(@"%@, %@, ", output, body);
//     }];

@end
