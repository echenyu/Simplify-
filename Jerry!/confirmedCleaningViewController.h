//
//  confirmedCleaningViewController.h
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface confirmedCleaningViewController : UIViewController

@property (nonatomic, strong) NSString *dayString;
@property (nonatomic, strong) NSString *timeOfDay;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) IBOutlet UILabel *dayLabel;
@property (nonatomic, strong) IBOutlet UILabel *timeOfDayLabel;
@property (nonatomic, strong) IBOutlet UILabel *timeLabel;
@property (nonatomic, strong) IBOutlet UIImageView *checkMark;
@property (nonatomic, strong) IBOutlet UIImageView *profilePicture;
@end
