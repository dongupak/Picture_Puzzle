//
//  PicturePuzzleViewController.m
//  PicturePuzzle
//
//  Created by IVIS Lab 2010.12.20
//  Copyright Cheol Ho, Kim All rights reserved.

#import "PicturePuzzleViewController.h"

@implementation PicturePuzzleViewController
	
@synthesize informView;
@synthesize howtoView;

- (void)viewDidLoad {	

    [super viewDidLoad];
	NSString *path = [[NSBundle mainBundle] pathForResource:@"mbg" ofType:@"mp3"];
	NSURL *url = [NSURL fileURLWithPath:path];
	mainBGM = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
	[mainBGM play];

}

- (IBAction)start{
	exam *shadow = [[exam alloc] init]; 
	[self.view addSubview:shadow.view]; 
	[self.navigationController pushViewController:shadow animated:YES];
	[mainBGM stop];
	[shadow release];
	[mainBGM release];
}
	 
- (IBAction)howto:(id)sender{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	if (howtoView.superview == nil) {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
		[self.view addSubview:howtoView];
	}
	[UIView commitAnimations];
}

- (IBAction)gomenu1:(id)sender{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	
	if (howtoView.superview != nil) {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
		[howtoView removeFromSuperview];
	}
	[UIView commitAnimations];
}

//credit화면전환 애니메이션.
- (IBAction)information:(id)sender{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	if (informView.superview == nil) {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
		[self.view addSubview:informView];
	}
	[UIView commitAnimations];
}

//credit화면에서 메인화면으로 전환하기.
- (IBAction)gomenu2:(id)sender{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	
	if (informView.superview != nil) {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
		[informView removeFromSuperview];
	}
	[UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
	
}


- (void)viewDidUnload {
    [super viewDidUnload];
	
}


- (void)dealloc {
	[exam release];
	[mainBGM release];
	[informView release];
	[howtoView release];
	[super dealloc];
}


@end
