//
//  LRSetupViewController.h
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRSetupViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *m_cTableView;
    NSMutableArray *m_cDataArray1;
    NSMutableArray *m_cDataArray2;
}

@end
