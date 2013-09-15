//
//  ZooViewController.m
//  Zoo
//
//  Created by Tran Van Bang on 9/7/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "ZooViewController.h"

@interface ZooViewController ()

@end

@implementation ZooViewController
@synthesize animals,animalPics;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return animals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [animals objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[animalPics objectAtIndex:indexPath.row]];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSIndexPath* selection = [tableView indexPathForSelectedRow];
    if (selection){
        
        [tableView deselectRowAtIndexPath:selection animated:YES];

        
    }
    
    DetailAnimalsViewController *detail = [[DetailAnimalsViewController alloc] initWithNibName:@"DetailAnimalsViewController" bundle:nil];
    detail.strName = [animals objectAtIndex:indexPath.row];
    detail.strImgName = [animalPics objectAtIndex:indexPath.row];
    [self presentViewController:detail animated:YES completion:nil];
    //[tableView reloadData];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
