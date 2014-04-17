//
//  LandscapeViewController.m
//  ASGAARD
//
//  Created by Jeff Stein on 2/16/14.
//  Copyright (c) 2014 Jeff Stein. All rights reserved.
//

#import "LandscapeViewController.h"
#import "objc/message.h"

@interface LandscapeViewController ()

@end

@implementation LandscapeViewController

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

    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeLeft animated:YES];
    objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationLandscapeLeft);

    NSLog(@"Issuing a rotation message (hopefully");
    [UIViewController attemptRotationToDeviceOrientation];

}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIViewController attemptRotationToDeviceOrientation];

}
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    // Push Pop quickly.




//    UIApplication* application = [UIApplication sharedApplication];
//    if (application.statusBarOrientation != UIDeviceOrientationLandscapeLeft) {
//        UIViewController *c = [[UIViewController alloc]init];
//        [[self navigationController] presentViewController:c animated:YES completion:nil];
////        [[self navigationController] pushViewController:c animated:YES];
//        [[self navigationController] popViewControllerAnimated:YES];
//    }

//    if (application.statusBarOrientation != UIDeviceOrientationLandscapeLeft)
//    {
//        UIViewController *c = [[UIViewController alloc]init];
//        [c.view setBackgroundColor:[UIColor redColor]];
//        [self.navigationController presentViewController:c animated:NO completion:^{
//            [self.navigationController dismissViewControllerAnimated:YES completion:^{
//            }];
//        }];
//    }





    if(UIDeviceOrientationIsPortrait(self.interfaceOrientation)){
        NSLog(@"--detected portrait");
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)])
        {
            NSLog(@"--sending rotation message");
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationLandscapeLeft );
        }
    }


    [UIViewController attemptRotationToDeviceOrientation];
}

-(void)viewDidDisappear:(BOOL)animated{
                             [super viewDidDisappear:animated];
    if(UIDeviceOrientationIsLandscape(self.interfaceOrientation)){
        NSLog(@"--is landscape")   ;
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)])
        {
            NSLog(@"--unrotating");
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationPortrait );
        }
    }
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


-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
