//
//  LRAppDelegate.h
//  LearnRiak
//
//  Created by Vidya on 10/04/14.
//  Copyright (c) 2014 Vidya Murthy & Achal Sudheer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LRSplashViewController.h"
#import "LRSetupViewController.h"
#import "LRLearningViewController.h"
#import "LRLibraryViewController.h"
#import "LRMoreViewController.h"


@interface LRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LRSplashViewController *splashviewcontroller;
@property (strong, nonatomic) UITabBarController *m_cTabbarController;

@property (strong, nonatomic) LRSetupViewController *m_cSetupVC;
@property (strong, nonatomic) LRLearningViewController *m_cLearningVC;
@property (strong, nonatomic) LRLibraryViewController *m_cLibraryVC;
@property (strong, nonatomic) LRMoreViewController *m_cMoreVC;

-(void)viewControllerChanged;

@end
