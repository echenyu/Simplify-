//
//  messageViewController.m
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "messageViewController.h"

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
    self.numberUnread.text = @"10";
    
    self.rectangle1.layer.cornerRadius = self.rectangle1.frame.size.width / 37;
    self.rectangle1.clipsToBounds = YES;
    self.rectangle2.layer.cornerRadius = self.rectangle2.frame.size.width/37;
    self.rectangle2.clipsToBounds = YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}
@end
