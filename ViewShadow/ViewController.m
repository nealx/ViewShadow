//
//  ViewController.m
//  ViewShadow
//
//  Created by Nealx on 14-1-2.
//  Copyright (c) 2014年 www.creacree.com. All rights reserved.
//

#import "ViewController.h"
#import "ViewShadow.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *colorv = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    colorv.backgroundColor = [UIColor greenColor];
    [self.view addSubview:colorv];
    [colorv release];
    
    ViewShadow *v = [[ViewShadow alloc] initWithFrame:CGRectMake(100, 200, 100, 5)];
    v.type = 1;
    [self.view addSubview:v];
    [v release];
    
    colorv = [[UIView alloc] initWithFrame:CGRectMake(200, 100, 100, 100)];
    colorv.backgroundColor = [UIColor greenColor];
    [self.view addSubview:colorv];
    [colorv release];
    
    v = [[ViewShadow alloc] initWithFrame:CGRectMake(200, 200, 100, 5)];
    v.type = 0;
    [self.view addSubview:v];
    [v release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
