//
//  AppDelegate.m
//  Travel
//
//  Created by Dana Buca on 25/02/2017.
//  Copyright © 2017 Dana Bucadana. All rights reserved.
//

#import "AppDelegate.h"
#import "UIUtils.h"
#import "SearchViewController.h"
#import "MapsViewController.h"
#import "WeatherViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // set status bar style
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    // set navigation bar text color
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    // set UI colors
    [UIUtils setUIColors];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = [self initializeViewControllersPhone];
    self.window.rootViewController = self.tabBarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;

}

- (NSArray*) initializeViewControllersPhone {
    //Set Serach tab
    SearchViewController *searchView = [[SearchViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *searchNav = [[UINavigationController alloc] initWithRootViewController:searchView];
    //UIImage *img = [UIImage imageNamed:@"add4.png"];
    searchNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Search", nil) image:nil tag:0];
    
    //Set Weather tab
    WeatherViewController *weatherView = [[WeatherViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *weatherNav = [[UINavigationController alloc] initWithRootViewController:weatherView];
    //UIImage *img = [UIImage imageNamed:@"add4.png"];
    weatherNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Weather", nil) image:nil tag:0];
    
    //Set Maps tab
    MapsViewController *mapsView = [[MapsViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *mapsNav = [[UINavigationController alloc] initWithRootViewController:mapsView];
    //UIImage *img = [UIImage imageNamed:@"add4.png"];
    mapsNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Maps", nil) image:nil tag:0];
    
    
    NSArray *viewControllerArray = [NSArray arrayWithObjects:searchNav, weatherNav, mapsNav, nil];
    
    return viewControllerArray;
    
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
