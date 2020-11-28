//
//  SceneDelegate.swift
//  DemoUITabBarController
//
//  Created by Taof on 11/28/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        let mainVC = setupControllers()
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
    }

    // viết hàm để setup các controller của UITabBarController
    func setupControllers() -> UITabBarController{
        // khởi tạo UITabBarController
        let tabBC = UITabBarController()
        
        // MARK: - Khởi tạo các ViewController
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        
        let groupVC = GroupViewController()
        groupVC.tabBarItem = UITabBarItem(title: "Group", image: UIImage(systemName: "person.3"), tag: 1)
        
        let watchVC = WatchViewController()
        watchVC.tabBarItem = UITabBarItem(title: "Watch", image: UIImage(systemName: "tv.fill"), tag: 2)
        
        let notificationVC = NotificationViewController()
        notificationVC.tabBarItem = UITabBarItem(title: "Notification", image: UIImage(systemName: "bell.fill"), tag: 3)
        notificationVC.tabBarItem.badgeValue = "N+"
        
        let menuVC = MenuViewController()
        menuVC.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(systemName: "text.justify"), tag: 4)
        
        // MARK: - Thêm các controller con vào tabBC
        tabBC.setViewControllers([homeVC, groupVC, watchVC, notificationVC, menuVC], animated: true)
        
        // trả về UITabBarController
        return tabBC
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

