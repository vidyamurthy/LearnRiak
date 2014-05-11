//
//  LRLearningViewController.h
//  LearnRiak
//
//  Created by Achal Sudheer on 4/6/14.
//  Copyright (c) 2014 Achal Sudheer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRLearningViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *m_cTableView;
    NSMutableArray *m_cDataArray;
}


@end
