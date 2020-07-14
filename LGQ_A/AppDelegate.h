//
//  AppDelegate.h
//  LGQ_A
//
//  Created by 刘国庆 on 2020/7/14.
//  Copyright © 2020 刘国庆. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

