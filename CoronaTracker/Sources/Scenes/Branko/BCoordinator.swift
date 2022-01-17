//
//  BCoordinator.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import Foundation
import UIKit

final class BCoordinator: BaseCoordinator {
	
	func makeTab() -> TabModel {
		let name = "Branko"
		return TabModel(vc: PlaceholderViewController(title: name), title: name, image: name)
	}
}
