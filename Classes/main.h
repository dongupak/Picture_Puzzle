//
//  main.h
//  PicturePuzzle
//
//  Created by MacPro on 10. 12. 22..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "exam.h"

@interface main : UIViewController {
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
- (IBAction)gohowto:(id)sender;
- (IBAction)goinfo:(id)sender;

@end

