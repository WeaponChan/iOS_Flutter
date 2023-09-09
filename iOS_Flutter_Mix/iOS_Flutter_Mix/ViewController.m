//
//  ViewController.m
//  iOS_Flutter_Mix
//
//  Created by Weapon Chen on 2023/9/9.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 200, 200, 40)];
    [btn setTitle:@"点击跳转Flutter页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushFlutterAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)pushFlutterAction
{
    FlutterViewController *vc = [[FlutterViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
