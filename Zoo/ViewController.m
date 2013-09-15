//
//  ViewController.m
//  Zoo
//
//  Created by Tran Van Bang on 9/7/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *_animals;
    NSArray *_animalPics;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionMakeZoo:(id)sender {
    
    _animals =@[@"Tiger",@"Lion",@"Cat",@"Dog",@"Bird",@"Fish",@"Rabbit",@"Chipmunk",@"Bear",@"Kangaroo",@"Panda",@"Porcupine",@"Deer"];
    
    _animalPics =@[@"Tiger.jpg",@"Lion.jpg",@"Cat.jpg",@"Dog.jpg",@"Bird.jpg",@"Fish.jpg",@"Rabbit.jpg",@"Chipmunk.jpg",@"Bear.jpg",@"Kangaroo.jpg",@"Panda.jpg",@"Porcupine.jpg",@"Deer.jpg"];
    
    ZooViewController *zooView = [[ZooViewController alloc] initWithNibName:@"ZooViewController" bundle:nil];
    zooView.animals = _animals;
    zooView.animalPics = _animalPics;
    [self presentViewController:zooView animated:YES completion:nil];
}

- (IBAction)actionCreateSounds:(id)sender {
}

- (IBAction)actionCreateMoves:(id)sender {
}
@end
