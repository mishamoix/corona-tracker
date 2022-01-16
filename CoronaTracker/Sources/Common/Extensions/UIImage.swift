//
//  UIImage.swift
//  CoronaTracker
//
//  Created by mike on 16.01.2022.
//

import Foundation
import UIKit

extension UIImage{
	
	var tabImage: UIImage {
		self.resizedImage(newWidth: 24)
			.roundedImage
			.withRenderingMode(.alwaysOriginal)
	}
	
	var roundedImage: UIImage {
		let rect = CGRect(origin:CGPoint(x: 0, y: 0), size: self.size)
		UIGraphicsBeginImageContextWithOptions(self.size, false, 0)
		UIBezierPath(
			roundedRect: rect,
			cornerRadius: self.size.height
		).addClip()
		self.draw(in: rect)
		return UIGraphicsGetImageFromCurrentImageContext()!
	}
	
	func resizedImage(newWidth: CGFloat) -> UIImage {
		let scale = newWidth / self.size.width
		let newHeight = self.size.height * scale
		UIGraphicsBeginImageContextWithOptions(CGSize(width: newWidth, height: newHeight), false, 0)
		self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
		let newImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return newImage!
	}
}
