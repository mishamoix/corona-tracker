//
//  DCoodrinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import UIKit

final class DCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "Dayem"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
