//
//  PlaceholderViewController.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import UIKit
import SwiftUI

final class PlaceholderViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let hosting = UIHostingController(rootView: PlaceholderView())
		
		addChild(hosting)
		hosting.willMove(toParent: self)
		view.addSubview(hosting.view)
		hosting.view.frame = view.bounds
		hosting.didMove(toParent: self)
	}
}
