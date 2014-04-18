//
//  PortraitViewController.m
//  ASGAARD
//
//  Created by Jeff Stein on 2/16/14.
//  Copyright (c) 2014 Jeff Stein. All rights reserved.
//

#import "PortraitViewController.h"
#import "objc/message.h"

@interface PortraitViewController ()

@end

@implementation PortraitViewController

- (BOOL)shouldAutorotate
{
	return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return UIInterfaceOrientationPortrait | UIInterfaceOrientationPortraitUpsideDown;
}


- (IBAction)exitSegueForModal:(UIStoryboardSegue *)segue
{
}


@end
