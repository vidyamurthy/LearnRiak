//
//  LRLibraryViewController.m
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import "LRLibraryViewController.h"
#import "LRConstants.h"

@interface LRLibraryViewController ()

@end

@implementation LRLibraryViewController

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
    
    self.title = @"Library";
    self.view.backgroundColor = LIGHT_GREEN;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
