//
//  ImageManipulation.mm
//  ImageChecker
//
//  Created by Neeraj Jhawar on 5/3/15.
//  Copyright (c) 2015 SolsSystems. All rights reserved.
//

#import "ImageManipulation.hh"

@implementation ImageManipulation{

}
@end


void blurImage () {
    cv::blur (inputImage, finalImage, cv::Size(5, 5));
}

void setImage (cv::Mat& img) {
    inputImage = img.clone();
}

void getImage (cv::Mat& img) {
    img = finalImg.clone();
}