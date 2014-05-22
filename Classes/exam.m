//
//  exam.m
//  PicturePuzzle
//
//  Created by IVIS Lab 2010.12.20
//  Copyright Cheol Ho, Kim All rights reserved.


#import "exam.h"

@implementation exam

@synthesize bg;
@synthesize shadowMove;
@synthesize shadowMove1;
@synthesize shadowpho;
@synthesize realpho;
@synthesize resolvebt;
@synthesize rightbt;
@synthesize nextpage;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize soundonoff;
@synthesize text;

- (void)onTimer {

	shadowMove.center = CGPointMake(shadowMove.center.x+pos.x, shadowMove.center.y+pos.y);//좌표값을 설정하고 pos좌표를 이용하여서 이동시킴.	
	if (shadowMove.center.x > 280 || shadowMove.center.x < 50) 
		pos.x = -pos.x;
	if (shadowMove.center.y > 200 || shadowMove.center.y < 100)
		pos.y = -pos.y;
	
	shadowMove1.center = CGPointMake(shadowMove1.center.x+pos1.x, shadowMove1.center.y+pos1.y);//좌표값을 설정하고 pos좌표를 이용하여서 이동시킴.
	if (shadowMove1.center.x > 100 || shadowMove1.center.x < 100) 
		pos1.x = -pos1.x;
	if (shadowMove1.center.y > 100 || shadowMove1.center.y < 100)
		pos1.y = -pos1.y;
}

- (void)viewDidLoad {
	
	nextpage.hidden = YES;
	shadowpho.hidden = NO;
	realpho.hidden = YES;
	state = NO;	
	
	NSString *press = [[NSBundle mainBundle] pathForResource:@"pressPhoto" ofType:@"mp3"];
	NSURL *url100 = [NSURL fileURLWithPath:press];
	pressPhoto = [[AVAudioPlayer alloc] initWithContentsOfURL:url100 error:nil];	
	
	NSString *examS2 = [[NSBundle mainBundle] pathForResource:@"examShadow" ofType:@"mp3"];
	NSURL *url200 = [NSURL fileURLWithPath:examS2];
	startsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url200 error:nil];
	
	NSString *path1 = [[NSBundle mainBundle] pathForResource:@"코끼리1" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	sound1 = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];

	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"lion" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	sound2 = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"chick1" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	sound3 = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"하마" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	sound4 = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	[startsn play];	
	
	pos = CGPointMake(3.0, 3.0);//shadow그림 움직이는 속도.
	
	pos1 = CGPointMake(3.0, 3.0); //real그림 움직이는 속도.
	
	[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
	[super viewDidLoad];
}

- (IBAction)wrong1:(id)sender{
	[startsn stop];
	[sound1 stop];
	[sound3 stop];
	[sound4 stop];
	[sound2 play];
}
- (IBAction)wrong2:(id)sender{
	[startsn stop];
	[sound1 stop];
	[sound2 stop];
	[sound4 stop];
	[sound3 play];
}
- (IBAction)wrong3:(id)sender{
	[startsn stop];
	[sound1 stop];
	[sound2 stop];
	[sound3 stop];
	[sound4 play];
}

- (IBAction)right:(id)sender{
	nextpage.hidden = NO;
	shadowpho.hidden = YES;
	realpho.hidden = NO;
	soundonoff.hidden = NO;
	text.hidden =YES;

	[startsn stop];
	[sound1 stop];
	[sound2 stop];
	[sound3 stop];
	[sound4 stop];
	[pressPhoto play];
	
	object1.hidden = NO;
	object2.hidden = NO;
	object3.hidden = NO;
	object4.hidden = NO;
	
	[object1 setEnabled:NO];
	[object2 setEnabled:NO];
	[object3 setEnabled:NO];
	[object4 setEnabled:NO];
}

- (IBAction)real:(id)sender{
	[startsn stop];
	[pressPhoto stop];
	[sound1 stop];
	[sound2 stop];
	[sound3 stop];
	[sound4 stop];


//	PicturePuzzleViewController *nextexam = [[PicturePuzzleViewController alloc] init];
	exam1 *nextexam = [[exam1 alloc] init];
	[self.view addSubview:nextexam.view]; 
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
}

- (IBAction)shoadow:(id)sender{
	[startsn stop];
	[sound1 play];
	[sound2 stop];
	[sound3 stop];
	[sound4 stop];	
}

- (void)viewDidUnload {

	[realpho release];
    [super viewDidUnload];
	
}

- (IBAction)switch1:(id)sender{
	state =! state;
	if (state == YES) {
		
		[sound1 play];
		[sound2 stop];
		[sound3 stop];
		[sound4 stop];
		[startsn stop];
		[pressPhoto stop];
		
	}
//	else {
//		[sound1 stop];
//		[sound2 stop];
//		[sound3 stop];
//		[sound4 stop];
//	}
}

- (void)dealloc {
	[AVAudioPlayer release];
	[shadowpho release];
	[realpho release];
	[resolvebt release];
	[rightbt release]; 
	[nextpage release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[soundonoff release];
	[text release];
	
    [super dealloc];
}

@end