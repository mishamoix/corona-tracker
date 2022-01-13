//
//  MainTabbarController.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit

/// Main tabbar controller
final class MainTabbarController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let appearance = UITabBarAppearance()
		appearance.configureWithOpaqueBackground()
		appearance.backgroundColor = .white
		tabBar.standardAppearance = appearance
		tabBar.scrollEdgeAppearance = tabBar.standardAppearance
	}
	
	/// Add view controller to tab
	/// - Parameters:
	///   - viewController: controller
	///   - title: title for this controller
	func add(viewController: UIViewController, title: String) {
		viewController.title = title		
		setViewControllers((viewControllers ?? []) + [viewController],
						   animated: false)
	}
}
