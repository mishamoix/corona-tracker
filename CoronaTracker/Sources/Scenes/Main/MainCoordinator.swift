//
//  MainCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit

/// Main coordnator for keeps screens
final class MainCoordinator {
	
	/// Make main controller
	/// - Returns: controller
	func makeViewController() -> UITabBarController {
		let tabbar = MainTabbarController()

		tabbar.add(viewController: mapController, title: "Map")
		tabbar.add(viewController: placeholderController, title: "Some")

		return tabbar
	}
}

private extension MainCoordinator {
	var mapController: UIViewController {
		return MapViewController()
	}
	
	var placeholderController: UIViewController {
		return UINavigationController(rootViewController: PlaceholderViewController())
	}
}
