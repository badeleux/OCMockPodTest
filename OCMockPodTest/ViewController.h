//
//  ViewController.h
//  OCMockPodTest
//
//  Created by Kamil Badyla on 14/02/2014.
//  Copyright (c) 2014 badeleux. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AFDownloadRequestOperation;

@interface ViewController : UIViewController

+ (NSString*)testMethod;
+ (AFDownloadRequestOperation*)requestSomewhere;

@end
