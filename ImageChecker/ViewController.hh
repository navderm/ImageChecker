//
//  ViewController.h
//  ImageChecker
//
//  Created by Neeraj Jhawar on 5/2/15.
//  Copyright (c) 2015 SolsSystems. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ImageManipulation.h"

@interface ViewController : UIViewController {
    UIImage* image;
    cv::Mat cvImage;
    ImageManipulation * imgManip;
}

@property (nonatomic, weak) IBOutlet UIImageView* imageView;
@end
