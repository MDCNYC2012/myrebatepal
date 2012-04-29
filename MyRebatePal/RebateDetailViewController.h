//
//  RebateDetailViewController.h
//  MyRebatePal
//
//  Created by Marie Patterson on 4/2/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RebateDetailViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    NSString *selection;
	NSArray *rebateDetailData;
}

@property(nonatomic, retain) NSString *selection; 
@property(nonatomic, retain) NSArray *rebateDetailData; 
@end
