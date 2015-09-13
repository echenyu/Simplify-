//
//  callCarViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "callCarViewController.h"

@implementation callCarViewController

-(void)viewDidLoad {
    [super viewDidLoad];
//    //NSString *urlString = ;
//    /NSURL *url = [NSURL URLWithString:urlString];
//    
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//    
//    [NSURLConnection sendAsynchronousRequest:urlRequest queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error)
//    {
//        if ([data length] > 0 && error == nil) {
//            
//        }
//        else if ([data length] == 0 && error == nil) {
//            
//        }
//        else if (error != nil && error.code == ERROR_CODE_TIMEOUT) {
//            
//        }
//        else if (error != nil){
//            
//        }
//    }];
}

-(IBAction)cancelCar:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
