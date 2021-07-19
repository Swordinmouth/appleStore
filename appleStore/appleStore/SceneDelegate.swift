//
//  SceneDelegate.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        let buyVC = BuyViewController()
        let forMeVC = ForMeViewController()
        let searchVC = SearchViewController()
        let cartVC = CartViewController()

        let navigationController = UINavigationController(rootViewController: searchVC)
        let forMeNavVC = UINavigationController(rootViewController: forMeVC)
        let tabBarVC = UITabBarController()


        buyVC.tabBarItem = UITabBarItem(title: "Купить", image: UIImage(systemName:"laptopcomputer.and.iphone"), tag: 0)
        buyVC.view.backgroundColor = .black

        forMeVC.tabBarItem = UITabBarItem(title: "Для вас", image: UIImage(systemName:"person.circle"), tag: 1)
        forMeVC.view.backgroundColor = .white

        searchVC.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName:"magnifyingglass"), tag: 2)
        searchVC.view.backgroundColor = .black
        searchVC.navigationController?.navigationBar.isHidden = true

        cartVC.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName:"bag"), tag: 3)
        cartVC.view.backgroundColor = .black

        tabBarVC.setViewControllers([buyVC, forMeNavVC, navigationController, cartVC], animated: true)
        tabBarVC.tabBar.barTintColor = .black
        self.window?.rootViewController = tabBarVC
        self.window?.makeKeyAndVisible()

        guard let _ = (scene as? UIWindowScene) else { return }
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

