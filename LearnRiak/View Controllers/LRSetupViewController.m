//
//  LRSetupViewController.m
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import "LRSetupViewController.h"
#import "LRConstants.h"
#import "LRDetailWebViewController.h"

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
    
    UIView *lBgView = [[UIView alloc] initWithFrame:self.view.frame];
    lBgView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.view addSubview:lBgView];
    
    
    UILabel *lIntroLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 300, 85)];
    lIntroLabel.text = @"Depending on the OS you are using, there are a variety of ways to install Riak. For further instructions, you can have a look at 'Tips and Tricks'";
    lIntroLabel.numberOfLines = 8;
    lIntroLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    lIntroLabel.textColor = [UIColor darkGrayColor];
    [self.view addSubview:lIntroLabel];
    
    m_cDataArray1 = [[NSMutableArray alloc] init];
    
    NSDictionary *lDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing & Upgrading", @"title" , @"Installing and Upgrading.pdf", @"url", nil];
    
    NSDictionary *lDict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing Erlang", @"title" , @"Installing Erlang.pdf", @"url", nil];
    
    NSDictionary *lDict3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on AWS Marketplace", @"title" , @"Installing on AWS Marketplace.pdf", @"url", nil];
    
    NSDictionary *lDict4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on Debian and Ubuntu", @"title" , @"Installing on Debian and Ubuntu.pdf", @"url", nil];
    
    NSDictionary *lDict5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on FreeBSD", @"title" , @"Installing on FreeBSD.pdf", @"url", nil];
    
    NSDictionary *lDict6 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on Mac OS X", @"title" , @"Installing on Mac OS X.pdf", @"url", nil];
    
    NSDictionary *lDict7 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on RHEL and CentOS", @"title" , @"Installing on RHEL and CentOS.pdf", @"url", nil];
    
    NSDictionary *lDict8 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on SmartOS", @"title" , @"Installing on SmartOS.pdf", @"url", nil];
    
    NSDictionary *lDict9 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on Solaris", @"title" , @"Installing on Solaris.pdf", @"url", nil];
    
    NSDictionary *lDict10 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on SUSE", @"title" , @"Installing on SUSE.pdf", @"url", nil];
    
    NSDictionary *lDict11 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing on Windows Azure", @"title" , @"Installing on Windows Azure.pdf", @"url", nil];
    
    NSDictionary *lDict12 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Installing Riak from Source", @"title" , @"Installing Riak from Source.pdf", @"url", nil];
    
    NSDictionary *lDict13 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Post Installation", @"title" , @"Post Installation.pdf", @"url", nil];
    
    [m_cDataArray1 addObject:lDict1];
    [m_cDataArray1 addObject:lDict2];
    [m_cDataArray1 addObject:lDict3];
    [m_cDataArray1 addObject:lDict4];
    [m_cDataArray1 addObject:lDict5];
    [m_cDataArray1 addObject:lDict6];
    [m_cDataArray1 addObject:lDict7];
    [m_cDataArray1 addObject:lDict8];
    [m_cDataArray1 addObject:lDict9];
    [m_cDataArray1 addObject:lDict10];
    [m_cDataArray1 addObject:lDict11];
    [m_cDataArray1 addObject:lDict12];
    [m_cDataArray1 addObject:lDict13];
    
    m_cDataArray2 = [[NSMutableArray alloc] init];
    
    NSDictionary *lDict14 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Basho Bench", @"title" , @"Basho Bench.pdf", @"url", nil];
    
    NSDictionary *lDict15 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Basic Cluster Setup", @"title" , @"Basic Cluster Setup.pdf", @"url", nil];
    
    NSDictionary *lDict16 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Basic Configuration", @"title" , @"Basic Configuration.pdf", @"url", nil];
    
    NSDictionary *lDict17 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Configuration Files", @"title" , @"Configuration Files.pdf", @"url", nil];
    
    NSDictionary *lDict18 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Configuring Secondary Indexes", @"title" , @"Configuring Secondary Indexes.pdf", @"url", nil];
    
    NSDictionary *lDict19 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Load Balancing and Proxy Configuration", @"title" , @"Load Balancing and Proxy Configuration.pdf", @"url", nil];
    
    NSDictionary *lDict20 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Riak MapReduce Settings", @"title" , @"Riak MapReduce Settings.pdf", @"url", nil];
    
    NSDictionary *lDict21 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Riak Search Settings", @"title" , @"Riak Search Settings.pdf", @"url", nil];
    
    NSDictionary *lDict22 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Adding and Removing Nodes", @"title" , @"Adding and Removing Nodes.pdf", @"url", nil];
    
    NSDictionary *lDict23 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Inspecting a Node", @"title" , @"Inspecting a Node.pdf", @"url", nil];
    
    NSDictionary *lDict24 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Renaming Nodes", @"title" , @"Renaming Nodes.pdf", @"url", nil];
    
    NSDictionary *lDict25 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Replacing a Node", @"title" , @"Replacing a Node.pdf", @"url", nil];
    
    NSDictionary *lDict26 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Tips and Tricks", @"title" , @"Tips and Tricks.pdf", @"url", nil];
    
    [m_cDataArray2 addObject:lDict14];
    [m_cDataArray2 addObject:lDict15];
    [m_cDataArray2 addObject:lDict16];
    [m_cDataArray2 addObject:lDict17];
    [m_cDataArray2 addObject:lDict18];
    [m_cDataArray2 addObject:lDict19];
    [m_cDataArray2 addObject:lDict20];
    [m_cDataArray2 addObject:lDict21];
    [m_cDataArray2 addObject:lDict22];
    [m_cDataArray2 addObject:lDict23];
    [m_cDataArray2 addObject:lDict24];
    [m_cDataArray2 addObject:lDict25];
    [m_cDataArray2 addObject:lDict26];
    

    m_cTableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 175, 300, 335) style:UITableViewStylePlain];
    m_cTableView.delegate = self;
    m_cTableView.dataSource = self;
    m_cTableView.backgroundView = nil;
    m_cTableView.backgroundColor = LIGHT_GREEN;
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return [m_cDataArray1 count];
    }
    else if (section == 1){
        return [m_cDataArray2 count];
    }
    else
        return 0;
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
    
    if (indexPath.section == 0) {
        lCell.textLabel.text = [[m_cDataArray1 objectAtIndex:indexPath.row] objectForKey:@"title"];
    }
    else if (indexPath.section == 1) {
        lCell.textLabel.text = [[m_cDataArray2 objectAtIndex:indexPath.row] objectForKey:@"title"];
    }
    
    
    return lCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    LRDetailWebViewController *lWebView = [[LRDetailWebViewController alloc] initWithNibName:@"LRDetailWebViewController" bundle:nil];
    
    NSString *path = @"";
    if (indexPath.section == 0) {
        path = [[NSBundle mainBundle] pathForResource:[[m_cDataArray1 objectAtIndex:indexPath.row] objectForKey:@"url"] ofType:nil];
    }
    else if (indexPath.section == 1) {
        path = [[NSBundle mainBundle] pathForResource:[[m_cDataArray2 objectAtIndex:indexPath.row] objectForKey:@"url"] ofType:nil];
    }
    
    NSURL *url = [NSURL fileURLWithPath:path];
    
    lWebView.m_cTargetURL = [url absoluteString];
    [self.navigationController pushViewController:lWebView animated:YES];

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *lTitle;
    
    if (section == 0) {
        lTitle = @" Installation";
    }
    else {
        lTitle = @" Configuration";
    }
    return lTitle;
}

@end
