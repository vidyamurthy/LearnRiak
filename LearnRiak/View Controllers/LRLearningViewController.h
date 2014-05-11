//
//  LRLearningViewController.h
//  LearnRiak
//

#import <UIKit/UIKit.h>

@interface LRLearningViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *m_cTableView;
    NSMutableArray *m_cDataArray;
}


@end
