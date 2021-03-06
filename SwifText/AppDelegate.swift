//
//  AppDelegate.swift
//  SwifText
//
//  Created by mac on 16/4/19.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        let rootV1 = ViewController()
        let rootV2 = TowViewController()
        let rootV3 = ThreePageViewController()
        
        let nvc1=UINavigationController(rootViewController:rootV1);
        nvc1.tabBarItem.image = UIImage(named: "map")
        nvc1.title = "地图"
        
        let nvc2=UINavigationController(rootViewController:rootV2);
         nvc2.tabBarItem = UITabBarItem(tabBarSystemItem:UITabBarSystemItem.Favorites, tag: 0)
     
        
        
        let nvc3 = UINavigationController(rootViewController: rootV3)
//        nvc3.tabBarItem.image = UIImage(named: "me"
//        nvc3.title = "我的"
        nvc3.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me"))
        
        
        
         let tabar = UITabBarController()
        tabar.viewControllers = [nvc1,nvc2,nvc3];
        self.window!.rootViewController = tabar;
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

