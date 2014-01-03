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
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageView.image  = [UIImage imageNamed:@"1.png"];
    [self.view addSubview:imageView];
    [imageView release];
    
    ViewShadow *v = [[ViewShadow alloc] initWithFrame:CGRectMake(100, 200, 100, 5)];
    v.type = 1;
    [self.view addSubview:v];
    [v release];
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(250, 100, 100, 100)];
    imageView.image  = [UIImage imageNamed:@"1.png"];
    [self.view addSubview:imageView];
    [imageView release];
    
    v = [[ViewShadow alloc] initWithFrame:CGRectMake(250, 200, 100, 3)];
    v.type = 0;
    [self.view addSubview:v];
    [v release];
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(420, 140, 60, 60)];
    imageView.image  = [UIImage imageNamed:@"1.png"];
    [self.view addSubview:imageView];
    [imageView release];
    
    v = [[ViewShadow alloc] initWithFrame:CGRectMake(400, 200, 100, 18)];
    v.type = 2;
    [self.view addSubview:v];
    [v release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
