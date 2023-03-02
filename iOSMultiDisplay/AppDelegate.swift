//
//  AppDelegate.swift
//  iOSMultiDisplay
//
//  Created by Nreal on 2023/3/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfiguration: UISceneConfiguration

        if connectingSceneSession.role == .windowExternalDisplay {
            sceneConfiguration = UISceneConfiguration.init(name: "External Display Configuration", sessionRole: connectingSceneSession.role)

            // Removing the storyboard prevents the external display scene from being used
//            if Settings.shared.externalDisplay == false {
//                sceneConfiguration.storyboard = nil
//            }
        } else {
            sceneConfiguration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }

        return sceneConfiguration
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

