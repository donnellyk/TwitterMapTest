//
//  TwitterMapTestViewController.h
//  TwitterMapTest
//
//  Created by Kevin Donnelly on 7/24/11.
//  Copyright 2011 -. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface TwitterMapTestViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView *tableView;
    IBOutlet UIImageView *imageView;
}

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end
