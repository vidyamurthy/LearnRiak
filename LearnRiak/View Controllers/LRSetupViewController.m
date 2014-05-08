//
//  LRSetupViewController.m
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import "LRSetupViewController.h"
#import "LRConstants.h"

@interface LRSetupViewController ()

@end

@implementation LRSetupViewController

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
    
    self.title = @"Setup";
    self.view.backgroundColor = LIGHT_GREEN;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    UILabel *lIntroLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 300, 100)];
    lIntroLabel.text = @"Depending on the OS you are using, there are a variety of ways to install Riak. For further instructions, you can have a look at out 'Tips and Tricks'";
    lIntroLabel.numberOfLines = 8;
    [self.view addSubview:lIntroLabel];
    
    m_cTableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 200, 300, 150) style:UITableViewStylePlain];
    m_cTableView.delegate = self;
    m_cTableView.dataSource = self;
    m_cTableView.backgroundView = nil;
    m_cTableView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    m_cTableView.separatorColor = [UIColor grayColor];
    m_cTableView.separatorInset = UIEdgeInsetsZero;
    [self.view addSubview:m_cTableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView Delegate Datasource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *lCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (lCell == nil) {
        lCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        lCell.backgroundColor = [UIColor clearColor];
    }
    
    switch (indexPath.row) {
        case 0:
            lCell.textLabel.text = @"Installation";
            break;
        case 1:
            lCell.textLabel.text = @"Node Configuration";
            break;
        case 2:
            lCell.textLabel.text = @"Tips and Tricks";
            break;
        default:
            break;
    }
    
    return lCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
