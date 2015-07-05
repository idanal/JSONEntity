//
//  AppDelegate.m
//  JSONEntity
//
//  Created by danal.luo on 15/7/5.
//  Copyright (c) 2015年 danal. All rights reserved.
//

#import "AppDelegate.h"
#import "JSONEntity.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    ClassA *a = [ClassA new];
    a.str = @"aaaa";
    
    ClassB *b = [ClassB new];
//    b.str = @"bbbb";
    b.num = 1234;
    b.a = a;
    b.classA = a;
    b.list = @[a];
    
    NSDictionary *d = [b toDict];
    NSLog(@"%@",d);
    {
        ClassB *b2 = [ClassB fromDict:d map:@{@"a":@"ClassA",@"list":@"ClassA"}];
        [b2 printObject];
        ClassA *a = [b2.list firstObject];
        NSLog(@"a.str=%@\n\n",a.str);
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end


@implementation ClassA

@end

@implementation ClassB

@end
