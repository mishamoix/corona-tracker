//
//  TCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import UIKit

final class TCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "Tallis"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
