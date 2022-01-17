//
//  MKCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import UIKit

final class MKCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "Mark"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
