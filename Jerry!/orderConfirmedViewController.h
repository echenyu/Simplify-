//
//  orderConfirmedViewController.h
//  Jerry!
//
//  Created by Eric Yu on 9/13/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface orderConfirmedViewController : UIViewController

@property (nonatomic, strong) UIImage *foodImage;
@property (nonatomic, strong) IBOutlet UIImageView *foodImageView;
@property (nonatomic, strong) NSString *foodItem;
@end
