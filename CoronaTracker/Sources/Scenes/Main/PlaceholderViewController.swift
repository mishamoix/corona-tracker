//
//  PlaceholderViewController.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import Foundation
import UIKit

final class PlaceholderViewController: UIViewController {
	
	init(title: String) {
		super.init(nibName: nil, bundle: nil)
		
		centerLabel.text = title
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private let centerLabel: UILabel = {
		let view = UILabel()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.textAlignment = .center
		return view
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.addSubview(centerLabel)
		
		view.backgroundColor = .white
		
		NSLayoutConstraint.activate([
			centerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			centerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
}
