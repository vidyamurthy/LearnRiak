//
//  LRSplashViewController.m
//  LearnRiak
//
//  Created by Vidya on 10/04/14.
//  Copyright (c) 2014 Vidya Murthy & Achal Sudheer. All rights reserved.
//

#import "LRSplashViewController.h"
#import "LRAppDelegate.h"

#define APPDELEGATE (LRAppDelegate *)[[UIApplication sharedApplication] delegate]

@interface LRSplashViewController ()

@end

@implementation LRSplashViewController

@synthesize m_cButton;

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
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
    

    
    [UIView animateWithDuration:0.5
                          delay:0.2
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.m_cButton.transform = CGAffineTransformMakeScale(1.25, 1.25);
                          }
                     completion:^(BOOL finished){
                         if (finished) {
                             [UIView animateWithDuration:0.5
                                                   delay:0
                                                 options:UIViewAnimationOptionCurveEaseInOut
                                              animations:^{
                                                  self.m_cButton.transform = CGAffineTransformMakeScale(1.0, 1.0);
                                              }
                                              completion:nil];
                         }
                     }];
    
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark User Defined Methods

-(IBAction)riakButtonClicked {
    
//    [[[UIApplication sharedApplication] delegate] performSelector:@selector(viewControllerChanged)];
    
    [APPDELEGATE viewControllerChanged];
}

@end
