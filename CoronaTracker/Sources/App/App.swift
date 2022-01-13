//
//  App.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit

/// Class for run app
final class App {
	
	private let window: UIWindow?
	private let mainCoordinator = MainCoordinator()
	
	/// Initialize
	/// - Parameter window: main window
	init(window: UIWindow?) {
		self.window = window
	}
	
	/// Run app
	func run() {
		window?.rootViewController = mainCoordinator.makeViewController()
		window?.makeKeyAndVisible()
	}
}
