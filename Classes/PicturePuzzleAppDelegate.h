//
//  PicturePuzzleAppDelegate.h
//  PicturePuzzle
//
//  Created by IVIS Lab 2010.12.20
//  Copyright Cheol Ho, Kim All rights reserved.


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class PicturePuzzleViewController;

@interface PicturePuzzleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PicturePuzzleViewController *viewController;
	UINavigationController *rootController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PicturePuzzleViewController *viewController;
@property (nonatomic, retain) IBOutlet UINavigationController *rootController;

@end

