//
//  LRDetailWebViewController.m
//  LearnRiak
//

#import "LRDetailWebViewController.h"

@interface LRDetailWebViewController ()

@end

@implementation LRDetailWebViewController

@synthesize m_cTargetURL, m_cWebView;

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
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    NSURL *targetURL = [NSURL URLWithString:self.m_cTargetURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [m_cWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIWebViewDelegate Methods

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSLog(@"Request Url: %@", [[request URL] absoluteString]);
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    NSLog(@"Error: %@", [error description]);
    
    UIAlertView *lAlert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"%@. Please try later.", [error description]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [lAlert show];
}


#pragma mark User Defined Methods

//Web View Navigation Actions

-(IBAction)backButtonClicked{
    if ([self.m_cWebView canGoBack]) {
        [self.m_cWebView goBack];
    }
}

-(IBAction)forwardButtonClicked{
    if ([self.m_cWebView canGoForward]) {
        [self.m_cWebView goForward];
    }
}

-(IBAction)refreshButtonClicked{
    [self.m_cWebView reload];
}

-(IBAction)stopButtonClicked{
    [self.m_cWebView stopLoading];
}
@end
