//
//  AViewController.m
//  LGQ_A
//
//  Created by 刘国庆 on 2020/7/14.
//  Copyright © 2020 刘国庆. All rights reserved.
//

#import "AViewController.h"
#import <LGQ_B_Category/CTMediator+B.h>
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"push to B" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    [btn addTarget:self
            action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    

    // Do any additional setup after loading the view.
}

- (void)buttonAction
{
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];

    [self.navigationController pushViewController:viewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
