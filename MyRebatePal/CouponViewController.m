//
//  CouponViewController.m
//  MyRebatePal
//
//  Created by Marie Patterson on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CouponViewController.h"
#import "CouponDetailViewController.h"


@implementation CouponViewController
@synthesize couponData;


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
   	NSArray *array = [[NSArray alloc] initWithObjects:@"Shampoo", @"Conditioner", @"Hair Spray",@"Pomade", nil];
	self.couponData = array;
    self.title = [[NSString alloc] initWithString:@"Hair Care"];
	[array release];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
	return [self.couponData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
	if (cell == nil) { cell = [[[UITableViewCell alloc]
								initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier] autorelease];
	}
	NSUInteger row = [indexPath row]; 
    cell.textLabel.text = [couponData objectAtIndex:row]; 
    return cell;
	
}

- (void) tableView: (UITableView*) tableView didSelectRowAtIndexPath: (NSIndexPath*) indexPath {
    CouponDetailViewController *couponDetailViewController = [[CouponDetailViewController alloc] initWithNibName:@"CouponDetailViewController" bundle:nil];
    couponDetailViewController.selection = [self.couponData objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:couponDetailViewController animated:YES];
    [couponDetailViewController release];
}
@end
