//
//  imagesViewController2.h
//  Jerry!
//
//  Created by Eric Yu on 9/12/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "JTSImageViewController.h"
@import Photos;

@interface imagesViewController2 : UIViewController


@property (nonatomic, strong) IBOutlet UIImageView *image1;
@property (nonatomic, strong) IBOutlet UIImageView *image2;
@property (nonatomic, strong) IBOutlet UIImageView *image3;
@property (nonatomic, strong) IBOutlet UIImageView *image4;
@property (nonatomic, strong) IBOutlet UIImageView *image5;
@property (nonatomic, strong) IBOutlet UIImageView *image6;
@property (nonatomic, strong) NSMutableArray *photosArray;
@property (nonatomic, strong) PHImageRequestOptions *requestOptions;
@property (nonatomic, strong) IBOutlet UIButton *button;
@end
