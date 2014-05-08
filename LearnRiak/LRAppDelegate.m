//
//  LRAppDelegate.m
//  LearnRiak
//
//  Created by Vidya on 10/04/14.
//  Copyright (c) 2014 Vidya Murthy & Achal Sudheer. All rights reserved.
//

#import "LRAppDelegate.h"
#import "LRConstants.h"

@implementation LRAppDelegate

@synthesize m_cTabbarController;
@synthesize splashviewcontroller;

@synthesize m_cSetupVC, m_cLearningVC, m_cLibraryVC, m_cMoreVC;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.m_cTabbarController = [[UITabBarController alloc] init];
    self.m_cTabbarController.tabBar.barTintColor = LIGHT_GREEN;
    self.m_cTabbarController.tabBar.tintColor = DARK_GREEN;
    
    m_cSetupVC = [[LRSetupViewController alloc] initWithNibName:@"LRSetupViewController" bundle:nil];
    UINavigationController *lSetupNC = [[UINavigationController alloc] initWithRootViewController:m_cSetupVC];
    UITabBarItem *lSetupItem = [[UITabBarItem alloc] initWithTitle:@"Setup"
                                                             image:[LRConstants imageOfFontelloString:@"\ue85e" fontSize:26 textColor:[UIColor whiteColor] size:CGSizeMake(30, 30)]
                                                               tag:0];
    lSetupNC.tabBarItem = lSetupItem;
    
    m_cLearningVC = [[LRLearningViewController alloc] initWithNibName:@"LRLearningViewController" bundle:nil];
    UINavigationController *lLearningNC = [[UINavigationController alloc] initWithRootViewController:m_cLearningVC];
    UITabBarItem *lLearningItem = [[UITabBarItem alloc] initWithTitle:@"Learning"
                                                                image:[LRConstants imageOfFontelloString:@"\uec25" fontSize:26 textColor:[UIColor whiteColor] size:CGSizeMake(30, 30)]
                                                                  tag:1];
    lLearningNC.tabBarItem = lLearningItem;
    
    m_cLibraryVC = [[LRLibraryViewController alloc] initWithNibName:@"LRLibraryViewController" bundle:nil];
    UINavigationController *lLibraryNC = [[UINavigationController alloc] initWithRootViewController:m_cLibraryVC];
    UITabBarItem *lLibraryItem = [[UITabBarItem alloc] initWithTitle:@"Library"
                                                               image:[LRConstants imageOfFontelloString:@"\uec20" fontSize:26 textColor:[UIColor whiteColor] size:CGSizeMake(30, 30)]
                                                                 tag:2];
    lLibraryNC.tabBarItem = lLibraryItem;
    
    m_cMoreVC = [[LRMoreViewController alloc] initWithNibName:@"LRMoreViewController" bundle:nil];
    UINavigationController *lMoreNC = [[UINavigationController alloc] initWithRootViewController:m_cMoreVC];
    UITabBarItem *lMoreItem = [[UITabBarItem alloc] initWithTitle:@"More"
                                                            image:[LRConstants imageOfFontelloString:@"\ue8ae" fontSize:26 textColor:[UIColor whiteColor] size:CGSizeMake(30, 30)]
                                                              tag:3];
    lMoreNC.tabBarItem = lMoreItem;
    
    NSArray *lTabbarArray = [[NSArray alloc] initWithObjects:lSetupNC, lLearningNC, lLibraryNC, lMoreNC, nil];
    
    self.m_cTabbarController.viewControllers = lTabbarArray;
    
    self.splashviewcontroller = [[LRSplashViewController alloc] init];
    UINavigationController *navcontroller = [[UINavigationController alloc] initWithRootViewController:splashviewcontroller];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = navcontroller;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark User Defined Methods

-(void)viewControllerChanged{
    
    if ([self.window.rootViewController isKindOfClass:[UINavigationController class]]) {
        //base is navigation controller of the splash view controller
        
        [UIView animateWithDuration:1.0 delay:0.0 options:0
                         animations:^{
                             [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.window cache:YES];
                         }
                         completion:nil];

        self.window.rootViewController = self.m_cTabbarController;
    }
    
}


@end
