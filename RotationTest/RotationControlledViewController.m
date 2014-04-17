//
//  RotationControlledViewController.m
//  ASGAARD
//
//  Created by Jeff Stein on 2/16/14.
//  Copyright (c) 2014 Jeff Stein. All rights reserved.
//

#import "RotationControlledViewController.h"

@interface RotationControlledViewController ()

@end

@implementation RotationControlledViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate
{
    BOOL ret =  [[self.viewControllers lastObject] shouldAutorotate];
//    NSLog(@"--Auto Roatate Reported %d", ret);
    return ret;
}



-(NSUInteger)supportedInterfaceOrientations
{
    NSUInteger ret = [[self.viewControllers lastObject] supportedInterfaceOrientations];

//    NSLog(@"--supportedInterfaceOrientations: %d", ret);


    return ret;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    UIInterfaceOrientation ret =  [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];

//    NSLog(@"--preferredInterfaceOrientationForPresentation: %ld",ret);
    return ret;
}


@end
