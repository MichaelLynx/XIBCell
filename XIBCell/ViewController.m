//
//  ViewController.m
//  XIBCell
//
//  Created by Admin on 2018/3/6.
//  Copyright © 2018年 DB. All rights reserved.
//

#import "ViewController.h"

#import "NotifocationViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    //跳转到tableview界面
    UIButton * toTableViewButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    toTableViewButton.frame = CGRectMake(200, 300, 90, 50);
    toTableViewButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:toTableViewButton];
    [toTableViewButton addTarget:self action:@selector(doTableView:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    
    
    
    
    
    
}




-(void)doTableView:(UIButton *)sender{
    
    NotifocationViewController * notiVC = [[NotifocationViewController alloc]init];
    
    [self presentViewController:notiVC animated:YES completion:nil];
    
    
}













- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
