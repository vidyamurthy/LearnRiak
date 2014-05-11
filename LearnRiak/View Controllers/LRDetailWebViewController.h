//
//  LRDetailWebViewController.h
//  LearnRiak
//

#import <UIKit/UIKit.h>

@interface LRDetailWebViewController : UIViewController
{
    NSString *m_cTargetURL;
}

@property (nonatomic, strong) NSString *m_cTargetURL;
@property (nonatomic, strong) IBOutlet UIWebView *m_cWebView;

-(IBAction)backButtonClicked;
-(IBAction)forwardButtonClicked;
-(IBAction)refreshButtonClicked;
-(IBAction)stopButtonClicked;

@end
