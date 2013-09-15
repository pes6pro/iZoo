//
//  ZooViewController.h
//  Zoo
//
//  Created by Tran Van Bang on 9/7/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailAnimalsViewController.h"
@interface ZooViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSArray *animals;
@property (nonatomic, retain) NSArray *animalPics;
- (IBAction)actionBack:(id)sender;

@end
