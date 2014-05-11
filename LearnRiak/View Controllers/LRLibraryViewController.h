//
//  LRLibraryViewController.h
//  LearnRiak
//

#import <UIKit/UIKit.h>

@interface LRLibraryViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *m_cTableView;
    NSMutableArray *m_cDataArray;
}


@end
