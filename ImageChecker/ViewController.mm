//
//  ViewController.m
//  ImageChecker
//
//  Created by Neeraj Jhawar on 5/2/15.
//  Copyright (c) 2015 SolsSystems. All rights reserved.
//

#import "ViewController.hh"

@implementation ViewController
// @synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"Welcome to OpenCV" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    // [alert show];
    // Read the image
    image = [UIImage imageNamed:@"lena.png"];
    if (image != nil) {
        _imageView.image = image;
        // Convert UIImage* to cv::Mat
        UIImageToMat(image, cvImage);
        cv::Mat blurredImg;
        cv::blur (cvImage, blurredImg, cv::Size(5,5));
        image = MatToUIImage(blurredImg);
        _imageView.image = image;
    }
}

- (void) findCanny {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
