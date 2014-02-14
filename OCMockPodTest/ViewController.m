//
//  ViewController.m
//  OCMockPodTest
//
//  Created by Kamil Badyla on 14/02/2014.
//  Copyright (c) 2014 badeleux. All rights reserved.
//

#import "ViewController.h"
#import <AFDownloadRequestOperation/AFDownloadRequestOperation.h>
#import "AFDownloadRequestOperation+Stub.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Static Methods

+ (NSString*)testMethod {
    return @"Original output from testMethod";
}

+ (AFDownloadRequestOperation*)requestSomewhere {
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://github.com/erikdoe/ocmock/issues/67"]];
    AFDownloadRequestOperation *request = [[AFDownloadRequestOperation alloc]initWithRequest:urlRequest];
    NSLog(@"TEST STUB: %@ %@", [[self class]testMethod], [AFDownloadRequestOperation cacheFolder]);
    return request;
}


@end
