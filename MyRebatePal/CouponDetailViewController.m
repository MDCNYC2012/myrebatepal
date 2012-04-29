//
//  CouponDetailViewController.m
//  MyRebatePal
//
//  Created by Marie Patterson on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CouponDetailViewController.h"


@implementation CouponDetailViewController

@synthesize couponDetailData;
@synthesize selection;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
   	NSArray *array = [[NSArray alloc] initWithObjects:@"Normal", @"Dry", @"Oily", nil];
	self.couponDetailData = array;
    self.title = [[NSString alloc] initWithString:self.selection];
	[array release];
     
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
   	NSArray *array = [[NSArray alloc] initWithObjects:@"Normal", @"Dry", @"Oily", nil];
	self.couponDetailData = array;
    self.title = [[NSString alloc] initWithString:self.selection];
	[array release];    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - 
#pragma mark Table View Data Source Methods


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.couponDetailData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
	if (cell == nil) { cell = [[[UITableViewCell alloc]
								initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier] autorelease];
	}
	NSUInteger row = [indexPath row]; 
    cell.textLabel.text = [couponDetailData objectAtIndex:row]; 
    return cell;
	
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (animated) {
        
    }
}

@end
