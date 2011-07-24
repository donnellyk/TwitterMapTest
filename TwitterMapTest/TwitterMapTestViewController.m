//
//  TwitterMapTestViewController.m
//  TwitterMapTest
//
//  Created by Kevin Donnelly on 7/24/11.
//  Copyright 2011 -. All rights reserved.
//

#import "TwitterMapTestViewController.h"

@implementation TwitterMapTestViewController
@synthesize tableView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)viewDidUnload
{
    imageView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma TableViewDataSource
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    UIView *bg = [[UIView alloc] initWithFrame:cell.frame];

    if (indexPath.row == 0) {
        cell.textLabel.text = @"";
        bg.backgroundColor = [UIColor clearColor];
    } else {
        cell.textLabel.text = @"Some Row";
        bg.backgroundColor = [UIColor whiteColor];

    }
    cell.backgroundView = bg;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

#pragma -
#pragma TableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 320;
    }
    return 54;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.y < 0) {CGRect newFrame = imageView.frame;
        newFrame.origin.y = -scrollView.contentOffset.y;
        imageView.frame = newFrame;
    } else {
        imageView.frame = CGRectMake(0, 0, 320, 320);
    }
}

#pragma -

@end
