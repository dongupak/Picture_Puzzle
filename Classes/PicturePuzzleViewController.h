//
//  PicturePuzzleViewController.h
//  PicturePuzzle
//
//  Created by IVIS Lab 2010.12.20
//  Copyright Cheol Ho, Kim All rights reserved.


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "exam.h"

@interface PicturePuzzleViewController : UIViewController {
	BOOL state;
	AVAudioPlayer *mainBGM;
	UIView *informView;
	UIView *howtoView;

}

@property (nonatomic, retain) IBOutlet UIView *informView;
@property (nonatomic, retain) IBOutlet UIView *howtoView;

- (IBAction)start;
- (IBAction)howto:(id)sender;
- (IBAction)information:(id)sender;
- (IBAction)gomenu1:(id)sender;
- (IBAction)gomenu2:(id)sender;

@end

