//
//  LRLibraryViewController.m
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import "LRLibraryViewController.h"
#import "LRConstants.h"
#import "LRDetailWebViewController.h"

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

    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIView *lBgView = [[UIView alloc] initWithFrame:self.view.frame];
    lBgView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.view addSubview:lBgView];
    
    UILabel *lIntroLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 300, 30)];
    lIntroLabel.text = @"Access to the online content";
    lIntroLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    lIntroLabel.textColor = [UIColor darkGrayColor];
    [self.view addSubview:lIntroLabel];
    
    m_cDataArray = [[NSMutableArray alloc] init];
    
    NSDictionary *lDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Riak Fast Track", @"title" , @"http://docs.basho.com/riak/latest/tutorials/fast-track/", @"url", nil];
    
    NSDictionary *lDict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Riak Overview", @"title" , @"https://speakerdeck.com/basho/riak-overview-includes-1-dot-3-features", @"url", nil];
    
    NSDictionary *lDict3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"From Relational to Riak", @"title" , @"http://basho.com/assets/RelationaltoRiak.pdf", @"url", nil];
    
    NSDictionary *lDict4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Schema Design for Riak", @"title" , @"http://www.slideshare.net/seancribbs/schema-design-for-riak", @"url", nil];
    
    NSDictionary *lDict5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"A Little Riak Book", @"title" , @"http://littleriakbook.com/", @"url", nil];
    
    NSDictionary *lDict6 = [[NSDictionary alloc] initWithObjectsAndKeys:@"CAP Theorem", @"title" , @"http://www.w3resource.com/mongodb/cap-theoram-image.png", @"url", nil];
    
    [m_cDataArray addObject:lDict1];
    [m_cDataArray addObject:lDict2];
    [m_cDataArray addObject:lDict3];
    [m_cDataArray addObject:lDict4];
    [m_cDataArray addObject:lDict5];
    [m_cDataArray addObject:lDict6];
    
    m_cTableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 120, 300, 390) style:UITableViewStylePlain];
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
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [m_cDataArray count];
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
    
    lCell.textLabel.text = [[m_cDataArray objectAtIndex:indexPath.row] objectForKey:@"title"];
    
    return lCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    LRDetailWebViewController *lWebView = [[LRDetailWebViewController alloc] initWithNibName:@"LRDetailWebViewController" bundle:nil];
    lWebView.m_cTargetURL = [[m_cDataArray objectAtIndex:indexPath.row] objectForKey:@"url"];
    [self.navigationController pushViewController:lWebView animated:YES];
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    
//    NSString *lTitle;
//    
//    if (section == 0) {
//        lTitle = @" Documentation";
//    }
//    else {
//        lTitle = @" Videos";
//    }
//    return lTitle;
//}

@end
