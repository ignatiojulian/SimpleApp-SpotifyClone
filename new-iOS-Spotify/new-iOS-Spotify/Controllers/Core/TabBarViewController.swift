//
//  TabBarViewController.swift
//  new-iOS-Spotify
//
//  Created by Ignatio Julian on 26/05/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let viewController1 = HomeViewController()
        let viewController2 = SearchViewController()
        let viewController3 = LibraryViewController()
        
        viewController1.title = "Browse"
        viewController2.title = "Search"
        viewController3.title = "Library"
        
        viewController1.navigationItem.largeTitleDisplayMode = .always
        viewController2.navigationItem.largeTitleDisplayMode = .always
        viewController3.navigationItem.largeTitleDisplayMode = .always
        
        let navigation1 = UINavigationController(rootViewController: viewController1)
        let navigation2 = UINavigationController(rootViewController: viewController2)
        let navigation3 = UINavigationController(rootViewController: viewController3)
        
        navigation1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navigation2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navigation3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        navigation1.navigationBar.prefersLargeTitles = true
        navigation2.navigationBar.prefersLargeTitles = true
        navigation3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navigation1,navigation2,navigation3], animated: false)
    }

}
