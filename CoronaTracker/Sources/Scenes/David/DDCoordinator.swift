//
//  DDCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import UIKit

final class DDCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "David"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
