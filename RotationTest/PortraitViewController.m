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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

     objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationPortrait);
}

- (void)viewDidAppear:(BOOL)animated {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Portrait Alert" message:@"This is portrait view" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}



@end
