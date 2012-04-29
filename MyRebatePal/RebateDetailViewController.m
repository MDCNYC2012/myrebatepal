//
//  RebateDetailViewController.m
//  MyRebatePal
//
//  Created by Marie Patterson on 4/2/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RebateDetailViewController.h"


@implementation RebateDetailViewController

@synthesize rebateDetailData;
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
    
   	NSArray *array = [[NSArray alloc] initWithObjects:@"Apple", @"HP", @"Acer", nil];
	self.rebateDetailData = array;
    self.title = [[NSString alloc] initWithString:self.selection];
	[array release];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
   	NSArray *array = [[NSArray alloc] initWithObjects:@"Apple", @"HP", @"Acer", nil];
	self.rebateDetailData = array;
    self.title = [[NSString alloc] initWithString:self.selection];
	[array release];    
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
	return [self.rebateDetailData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
	if (cell == nil) { cell = [[[UITableViewCell alloc]
								initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier] autorelease];
	}
	NSUInteger row = [indexPath row]; 
    cell.textLabel.text = [rebateDetailData objectAtIndex:row]; 
    return cell;
	
}
@end
