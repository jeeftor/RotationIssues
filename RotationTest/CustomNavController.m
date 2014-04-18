//
//  CustomNavController.m
//  RotationTest
//
//  Created by Jeff Stein on 4/17/14.
//  Copyright (c) 2014 Jeff Stein. All rights reserved.
//

#import "CustomNavController.h"

@interface CustomNavController ()

@end

@implementation CustomNavController

- (NSUInteger)supportedInterfaceOrientations
{
	return self.topViewController.supportedInterfaceOrientations;
}


@end
