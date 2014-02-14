//
//  OCMockPodTestTests.m
//  OCMockPodTestTests
//
//  Created by Kamil Badyla on 14/02/2014.
//  Copyright (c) 2014 badeleux. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import <AFDownloadRequestOperation.h>
#import "AFDownloadRequestOperation+Stub.h"
#import <OCMock.h>

@interface OCMockPodTestTests : XCTestCase

@end

@implementation OCMockPodTestTests

- (void)setUp
{
    [super setUp];
    id vc = [OCMockObject mockForClass:[ViewController class]];
    [[[[vc stub] classMethod]andReturn:@"/Volumes/test5M"] testMethod];
    
    id requestOperation = [OCMockObject mockForClass:[AFDownloadRequestOperation class]];
    [[[[requestOperation stub] classMethod]andReturn:@"/Volumes/test5M"] cacheFolder];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSLog(@"TEST STUB: %@ %@", [ViewController testMethod], [AFDownloadRequestOperation cacheFolder]);
    [ViewController requestSomewhere];
    NSLog(@"TEST STUB: %@ %@", [ViewController testMethod], [AFDownloadRequestOperation cacheFolder]);
}

@end
