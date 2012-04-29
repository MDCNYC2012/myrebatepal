//
//  RegisterViewController.h
//  MyRebatePal
//
//  Created by Marie Patterson on 4/2/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegisterViewController : UIViewController {
    IBOutlet UITextField *firstNameTextField;
    IBOutlet UITextField *lastNameTextField;
}

@property(nonatomic, retain) UITextField *firstNameTextField;
@property(nonatomic, retain) UITextField *lastNameTextField;

- (IBAction) submitNow;
@end
