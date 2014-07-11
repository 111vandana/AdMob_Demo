//
//  ViewController.m
//  AdMob
//
//  Created by Vandana on 03/07/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//Don't forget to add -ObjC to Other Linker Flags (Target-->Build Setting-->Other Linker Flags)
    
    CGPoint origin =CGPointMake(0,20);
    bannerView_ = [[GADBannerView alloc]initWithAdSize:kGADAdSizeBanner origin:origin];
    
    bannerView_.adUnitID = kSampleAdUnitID;
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    [bannerView_ loadRequest:[GADRequest request]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
