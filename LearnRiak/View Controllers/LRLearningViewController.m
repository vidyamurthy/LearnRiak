//
//  LRLearningViewController.m
//  LearnRiak
//

#import "LRLearningViewController.h"
#import "LRConstants.h"
#import "LRDetailWebViewController.h"

@interface LRLearningViewController ()

@end

@implementation LRLearningViewController

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
    
    self.title = @"Learning";
    self.view.backgroundColor = LIGHT_GREEN;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIView *lBgView = [[UIView alloc] initWithFrame:self.view.frame];
    lBgView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.view addSubview:lBgView];
    
    UILabel *lIntroLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 300, 30)];
    lIntroLabel.text = @"A great place to start!";
    lIntroLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    lIntroLabel.textColor = [UIColor darkGrayColor];
    [self.view addSubview:lIntroLabel];
    
    m_cDataArray = [[NSMutableArray alloc] init];
    
    NSDictionary *lDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Why Riak", @"title" , @"Why Riak.pdf", @"url", nil];
    
    NSDictionary *lDict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying with Erlang", @"title" , @"Querying with Erlang.pdf", @"url", nil];
    
    NSDictionary *lDict3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying with Java", @"title" , @"Querying with Java.pdf", @"url", nil];
    
    NSDictionary *lDict4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying with PHP", @"title" , @"Querying with PHP.pdf", @"url", nil];
    
    NSDictionary *lDict5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying with Python", @"title" , @"Querying with Python.pdf", @"url", nil];
    
    NSDictionary *lDict6 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying with Ruby", @"title" , @"Querying with Ruby.pdf", @"url", nil];
    
    NSDictionary *lDict7 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Querying", @"title" , @"Querying.pdf", @"url", nil];
    
    NSDictionary *lDict8 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Client Libraries", @"title" , @"Client Libraries.pdf", @"url", nil];
    
    NSDictionary *lDict9 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Link Walking", @"title" , @"Link Walking.pdf", @"url", nil];
    
    NSDictionary *lDict10 = [[NSDictionary alloc] initWithObjectsAndKeys:@"The Basics", @"title" , @"The Basics.pdf", @"url", nil];
    
    NSDictionary *lDict11 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Using Commit Hooks", @"title" , @"Using Commit Hooks.pdf", @"url", nil];
    
    NSDictionary *lDict12 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Using Key Filters", @"title" , @"Using Key Filters.pdf", @"url", nil];
    
    NSDictionary *lDict13 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Using MapReduce", @"title" , @"Using MapReduce.pdf", @"url", nil];
    
    NSDictionary *lDict14 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Using Search", @"title" , @"Using Search.pdf", @"url", nil];
    
    NSDictionary *lDict15 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Using Secondary Indexes", @"title" , @"Using Secondary Indexes.pdf", @"url", nil];
    
    
    [m_cDataArray addObject:lDict1];
    [m_cDataArray addObject:lDict2];
    [m_cDataArray addObject:lDict3];
    [m_cDataArray addObject:lDict4];
    [m_cDataArray addObject:lDict5];
    [m_cDataArray addObject:lDict6];
    [m_cDataArray addObject:lDict7];
    [m_cDataArray addObject:lDict8];
    [m_cDataArray addObject:lDict9];
    [m_cDataArray addObject:lDict10];
    [m_cDataArray addObject:lDict11];
    [m_cDataArray addObject:lDict12];
    [m_cDataArray addObject:lDict13];
    [m_cDataArray addObject:lDict14];
    [m_cDataArray addObject:lDict15];
    
    
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
    
    NSString *path = [[NSBundle mainBundle] pathForResource:[[m_cDataArray objectAtIndex:indexPath.row] objectForKey:@"url"] ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    lWebView.m_cTargetURL = [url absoluteString];
    
    [self.navigationController pushViewController:lWebView animated:YES];

}

@end
