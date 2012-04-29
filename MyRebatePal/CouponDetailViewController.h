//
//  CouponDetailViewController.h
//  MyRebatePal
//
//  Created by Marie Patterson on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CouponDetailViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    NSString *selection;
	NSArray *couponDetailData;
}

@property(nonatomic, retain) NSString *selection; 
@property(nonatomic, retain) NSArray *couponDetailData; 
@end
