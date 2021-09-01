//
//  MTViewController.m
//  MTHTTPCient
//
//  Created by Tom.Liu on 09/01/2021.
//  Copyright (c) 2021 Tom.Liu. All rights reserved.
//

#import "MTViewController.h"
#import <MTHTTPCient/MTHTTPCient.h>
#import <MTHTTPCient/MTHTTPCientCongfig.h>
#import <MTHTTPCient/MTHTTPRequest.h>
@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MTHTTPCient * client = [[MTHTTPCient alloc] initClientWithConfig:[MTHTTPCientCongfig defaultConfig]];
    [client requestWithRequestObject:[MTHTTPRequest requestWithMethod:kMTHTTPMethod_GET url:@"/data/2.5/weather" param:@{@"appid": @"fd5489917aec099715785ebd7593340d", @"q": @"Shenzhen"}]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
