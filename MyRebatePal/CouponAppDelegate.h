//
//  CouponAppDelegate.h
//  MyRebatePal
//
//  Created by Marie Patterson on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CouponViewController;

@interface CouponAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CouponViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CouponViewController *viewController;

@end
