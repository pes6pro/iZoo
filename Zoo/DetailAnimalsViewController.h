//
//  DetailAnimalsViewController.h
//  Zoo
//
//  Created by Tran Van Bang on 9/7/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailAnimalsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbName;
@property (weak, nonatomic) IBOutlet UIImageView *imgName;

@property (weak, nonatomic)  NSString *strName;
@property (weak, nonatomic)  NSString *strImgName;

- (IBAction)back:(id)sender;
@end
