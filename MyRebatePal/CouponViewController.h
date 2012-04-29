//
//  CouponViewController.h
//  MyRebatePal
//
//  Created by Marie Patterson on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CouponViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
	NSArray *couponData;
}

@property(nonatomic, retain) NSArray *couponData; 
@end
