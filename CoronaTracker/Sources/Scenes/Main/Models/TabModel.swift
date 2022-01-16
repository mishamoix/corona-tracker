//
//  TabModel.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import Foundation
import UIKit

struct TabModel {
	let viewController: UIViewController
	
	init(vc: UIViewController, title: String, image: String) {
		self.viewController = vc
		vc.tabBarItem.title = title
		vc.tabBarItem.image = UIImage(named: image)?.tabImage
	}
}
