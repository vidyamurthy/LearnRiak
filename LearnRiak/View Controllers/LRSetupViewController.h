//
//  LRSetupViewController.h
//  LearnRiak
//

#import <UIKit/UIKit.h>

@interface LRSetupViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *m_cTableView;
    NSMutableArray *m_cDataArray1;
    NSMutableArray *m_cDataArray2;
}

@end
