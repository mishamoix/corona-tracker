//
//  MCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import UIKit

final class MCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "Mathe"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
