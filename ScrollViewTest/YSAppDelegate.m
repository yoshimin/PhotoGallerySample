//
//  YSAppDelegate.m
//  ScrollViewTest
//
//  Created by 新谷　よしみ on 2013/05/08.
//  Copyright (c) 2013年 新谷　よしみ. All rights reserved.
//

#import "YSAppDelegate.h"

#import "YSViewController.h"

@implementation YSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //set default window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    YSViewController *viewController = [[YSViewController alloc] init];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
