//
//  MainTabbarController.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit

/// Main tabbar controller
final class MainTabbarController: UITabBarController {
	
	override var traitCollection: UITraitCollection {
		let realTraits = super.traitCollection
		let lieTrait = UITraitCollection.init(horizontalSizeClass: .regular)
		return UITraitCollection(traitsFrom: [realTraits, lieTrait])
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let appearance = UITabBarAppearance()
		appearance.configureWithOpaqueBackground()
		appearance.backgroundColor = .white
		tabBar.standardAppearance = appearance
		tabBar.scrollEdgeAppearance = tabBar.standardAppearance
	}
	
	func set(tabs: [TabModel]) {
		setViewControllers(tabs.map({ $0.viewController }), animated: true)
	}
}
