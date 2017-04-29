//
//  ViewController.m
//  16-HomeWork-UIView-Drawings
//
//  Created by Slava on 29.04.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"
#import "HomeWork.h"

@interface ViewController ()

@property(strong,nonatomic) UIView *viewRect;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    [self.rect setNeedsDisplay];
    
}


@end
