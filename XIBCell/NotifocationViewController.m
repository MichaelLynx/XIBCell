//
//  NotifocationViewController.m
//  UIDemo
//
//  Created by Admin on 2018/3/6.
//  Copyright © 2018年 DB. All rights reserved.
//

#import "NotifocationViewController.h"

#import "NotiTableViewCell.h"



//屏幕宽高相关参数
#define WIDTH_FOR_SCREEN [UIScreen mainScreen].bounds.size.width
#define HEIGHT_FOR_SCREEN [UIScreen mainScreen].bounds.size.height
#define BOUNDS_FOR_SCREEN [UIScreen mainScreen].bounds





@interface NotifocationViewController ()<UITableViewDataSource,UITableViewDelegate>



@property(nonatomic, strong) UITableView * myTableView;



@end

//重用标识，和xib上设置的重用标识一致
static NSString * cellID = @"xibCell";




@implementation NotifocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    _myTableView = [[UITableView alloc]initWithFrame:BOUNDS_FOR_SCREEN style:(UITableViewStylePlain)];
    
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    
    [self.view addSubview:_myTableView];
    
    
    /** 加载xib 返回nib对象*/
    UINib * cellNib = [UINib nibWithNibName:@"NotiTableViewCell" bundle:nil];
    /** 通过nib对象，注册cell，设置重用*/
    [_myTableView registerNib:cellNib forCellReuseIdentifier:cellID];
    
    
    
    
}



#pragma mark - tableView协议
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 5;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NotiTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    
    NSString * tmpString = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    UIImage * theImage = [UIImage imageNamed:@"0"];
    
    
    [cell BSGSetImage:theImage leftLabel:tmpString rightLabel:tmpString];
    
    
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
    
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    NSString * index = [NSString stringWithFormat:@"%ld",indexPath.row];
    NSLog(@"%@",index);
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
