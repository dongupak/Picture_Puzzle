//
//  exam1.h
//  PicturePuzzle
//
//  Created by IVIS Lab 2010.12.20
//  Copyright Cheol Ho, Kim All rights reserved.

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "exam2.h"


@interface exam1 : UIViewController {
	
	BOOL state;	
	
	CGPoint pos;
	CGPoint pos1;
	UIImageView *bg;
	IBOutlet UIButton *shadowMove;
	IBOutlet UIButton *shadowMove1;
	UIButton *shadowpho;
	UIButton *realpho;
	UIButton *resolvebt;
	UIButton *rightbt;
	
	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	
	UILabel *nextpage;
	
	AVAudioPlayer *rightsn;
	AVAudioPlayer *startsn;
	AVAudioPlayer *sound1;
	AVAudioPlayer *sound2;
	AVAudioPlayer *sound3;
	AVAudioPlayer *sound4;
	AVAudioPlayer *pressPhoto;
	
}

@property (nonatomic, retain) UIButton *shadowMove;
@property (nonatomic, retain) UIButton *shadowMove1;
@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *shadowpho;
@property (nonatomic, retain) IBOutlet UIButton *realpho;
@property (nonatomic, retain) IBOutlet UIButton *resolvebt;
@property (nonatomic, retain) IBOutlet UIButton *rightbt;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *soundonoff;
@property (nonatomic, retain) IBOutlet UILabel *nextpage;
@property (nonatomic, retain) IBOutlet UILabel *text;

- (IBAction)wrong1:(id)sender;
- (IBAction)wrong2:(id)sender;
- (IBAction)wrong3:(id)sender;

- (IBAction)right:(id)sender;
- (IBAction)shoadow:(id)sender;
- (IBAction)real:(id)sender;
- (IBAction)switch1:(id)sender;

@end