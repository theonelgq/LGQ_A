//
//  Target_A.m
//  LGQ_A
//
//  Created by 刘国庆 on 2020/7/14.
//  Copyright © 2020 刘国庆. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}


@end
