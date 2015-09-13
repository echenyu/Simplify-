//
//  ViewController.h
//  Jerry!
//
//  Created by Eric Yu on 9/11/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OAUthiOS/OAuthiOS.h>


@interface ViewController : UIViewController <UIAlertViewDelegate, OAuthIODelegate>

@property (nonatomic, strong) IBOutlet UIButton *emergencyCall;
@property (nonatomic, weak) IBOutlet UIButton *blah;
@property (nonatomic, strong) IBOutlet UIButton *contact;
@end

