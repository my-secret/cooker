//
//  AppDelegate.m
//  cooker
//
//  Created by 刘炜 on 16/1/29.
//  Copyright © 2016年 刘炜. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "SquareViewController.h"
#import "MyViewController.h"
#import "MenuViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MenuViewController * MenuVC =[[MenuViewController alloc]init];
    MenuVC.title =@"菜谱";
    MenuVC.tabBarItem.image=[UIImage imageNamed:@"collect_normal.png"];
    MenuVC.tabBarItem.selectedImage =[UIImage imageNamed:@"collect_pressed.png"];
    UINavigationController * menuNC =[[UINavigationController alloc]initWithRootViewController:MenuVC];
    
    
    HomeViewController * homeVC =[[HomeViewController alloc]init];
    homeVC.title =@"到家";
    homeVC.tabBarItem.image =[UIImage imageNamed:@"find_normal.png"];
    homeVC.tabBarItem.selectedImage =[UIImage imageNamed:@"find_pressed.png"];
    UINavigationController * homeNC =[[UINavigationController alloc]initWithRootViewController:homeVC];
    
    SquareViewController * squareVC =[[SquareViewController alloc]init];
    squareVC.title =@"广场";
    squareVC.tabBarItem.image =[UIImage imageNamed:@"group_normal.png"];
    squareVC.tabBarItem.selectedImage = [UIImage imageNamed:@"group_pressed.png"];
    UINavigationController * squareNC =[[UINavigationController alloc]initWithRootViewController:squareVC];
    
    
    MyViewController * myVC =[[MyViewController alloc]init];
    myVC.title =@"我的";
    myVC.tabBarItem.image =[UIImage imageNamed:@"mine_normal.png"];
    myVC.tabBarItem.selectedImage = [UIImage imageNamed:@"mine_pressed.png"];
    UINavigationController * myNC =[[UINavigationController alloc]initWithRootViewController:myVC];
    
    
    UITabBarController * Tbc =[[UITabBarController alloc]init];
    Tbc.viewControllers = @[menuNC,homeNC,squareNC,myNC];;
    self.window.rootViewController=Tbc;
    Tbc.selectedIndex=0;
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
