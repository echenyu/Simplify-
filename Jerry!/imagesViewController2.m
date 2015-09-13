//
//  imagesViewController2.m
//  Jerry!
//
//  Created by Eric Yu on 9/12/15.
//  Copyright (c) 2015 AAEAA. All rights reserved.
//

#import "imagesViewController2.h"
@import Photos;
#import "JTSImageViewController.h"
#import "JTSImageInfo.h"

@implementation imagesViewController2 {
    int count;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

-(void) setup {
    count = 0;
    self.photosArray = [[NSMutableArray alloc]init];
    self.requestOptions = [[PHImageRequestOptions alloc] init];
    self.requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    self.requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    
    // this one is key
    self.requestOptions.synchronous = true;
    PHFetchResult *result = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum
                                                                     subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary
                                                                     options:nil];
    
    for(PHAssetCollection *moment in result) {
        PHFetchResult * assetsFetchResults = [PHAsset fetchAssetsInAssetCollection:moment options:nil];
        // this one is key
        NSLog(@"%i", [assetsFetchResults count]);
        for (PHAsset * asset in assetsFetchResults) {
            
            
            //Do something with asset, for example add them to array
            [self.photosArray addObject:asset];
        }
    }
    UIImage *faceImage = [UIImage imageNamed:@"homebutton.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
    self.title = @"Photos";
    [self loadPhotos];
}

-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void) loadPhotos {
    PHImageManager *manager = [PHImageManager defaultManager];
    NSMutableArray *temp = [[NSMutableArray alloc]init];
    __block UIImage *imageData;

    for(int i = count; i < count+6; i++) {
        [manager requestImageForAsset:[self.photosArray objectAtIndex:i]
                           targetSize:PHImageManagerMaximumSize
                          contentMode:PHImageContentModeDefault
                              options:self.requestOptions
                        resultHandler:^void(UIImage *image, NSDictionary *info) {
                            imageData = image;
                        }];
        
        [temp addObject:imageData];
    }
    
    self.image1.image = [temp objectAtIndex:0];
    self.image2.image = [temp objectAtIndex:1];
    self.image3.image = [temp objectAtIndex:2];
    self.image4.image = [temp objectAtIndex:3];
    self.image5.image = [temp objectAtIndex:4];
    self.image6.image = [temp objectAtIndex:5];
    
}

-(IBAction)previous:(id)sender {
    if(count == 0) {
        return;
    }
    count = count - 6;
    [self loadPhotos];
}

-(IBAction)next:(id)sender {
    if(count + 6 > [self.photosArray count]) {
        return;
    }
    count = count + 6;
    [self loadPhotos];
    
}

-(IBAction)buttonPress:(id)sender {
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    
    if([[sender currentTitle] isEqualToString:@"pic1"]) {
        imageInfo.image = self.image1.image;
        imageInfo.referenceRect = self.image1.frame;
        imageInfo.referenceView = self.image1.superview;

    } else if([[sender currentTitle] isEqualToString:@"pic2"]) {
        imageInfo.image = self.image2.image;
        imageInfo.referenceRect = self.image2.frame;
        imageInfo.referenceView = self.image2.superview;

    } else if([[sender currentTitle] isEqualToString:@"pic3"]) {
        imageInfo.image = self.image3.image;
        imageInfo.referenceRect = self.image3.frame;
        imageInfo.referenceView = self.image3.superview;

    } else if([[sender currentTitle] isEqualToString:@"pic4"]) {
        imageInfo.image = self.image4.image;
        imageInfo.referenceRect = self.image4.frame;
        imageInfo.referenceView = self.image4.superview;

    } else if([[sender currentTitle] isEqualToString:@"pic5"]) {
        imageInfo.image = self.image5.image;
        imageInfo.referenceRect = self.image5.frame;
        imageInfo.referenceView = self.image5.superview;

    } else if([[sender currentTitle] isEqualToString:@"pic6"]) {
        imageInfo.image = self.image6.image;
        imageInfo.referenceRect = self.image6.frame;
        imageInfo.referenceView = self.image6.superview;

    }
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundOption_Scaled];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}
@end
