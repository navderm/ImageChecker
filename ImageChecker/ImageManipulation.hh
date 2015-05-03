//
//  ImageManipulation.hh
//  ImageChecker
//
//  Created by Neeraj Jhawar on 5/3/15.
//  Copyright (c) 2015 SolsSystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifdef __cplusplus
#include "opencv2/highgui/ios.h"
#include "opencv2/opencv.hpp"
#include "opencv2/opencv_modules.hpp"
// using namespace cv;
#endif

@interface ImageManipulation : NSObject {
    
    cv::Mat finalImage;
    blurImage ();
public:
    @property cv::Mat inputImage;
    - (void) setImage: (cv::Mat&) inpImg;
    void getImage (cv::Mat&);
    
}
@end
