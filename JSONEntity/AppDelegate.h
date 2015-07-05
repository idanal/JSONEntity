//
//  AppDelegate.h
//  JSONEntity
//
//  Created by danal.luo on 15/7/5.
//  Copyright (c) 2015年 danal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end



@interface ClassA : NSObject
@property (nonatomic, strong) NSString *str;
@end

@interface ClassB : ClassA
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, strong) ClassA *a;
@property (nonatomic, strong) ClassA *classA;
@property (nonatomic, strong) NSArray *list;
@end
