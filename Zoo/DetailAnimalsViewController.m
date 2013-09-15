//
//  DetailAnimalsViewController.m
//  Zoo
//
//  Created by Tran Van Bang on 9/7/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "DetailAnimalsViewController.h"

@interface DetailAnimalsViewController ()

@end


@implementation DetailAnimalsViewController

@synthesize lbName;
@synthesize imgName;
@synthesize strName,strImgName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lbName.text = strName;
    imgName.image = [UIImage imageNamed:strImgName];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
