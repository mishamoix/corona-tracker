//
//  MainCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit

/// Main coordnator for keeps screens
final class MainCoordinator {
		
	private let coordinators: [BaseCoordinator] = [
		BCoordinator(),
		DDCoordinator(),
		MCoordinator(),
		MKCoordinator(),
		TCoordinator(),
		DCoordinator()
	]
	
	/// Make main controller
	/// - Returns: controller
	func makeViewController() -> UITabBarController {
		let tabbar = MainTabbarController()
		
		tabbar.set(tabs: coordinators.map({ $0.makeTab() }))
		
		return tabbar
	}
}
