//
//  MainView.swift
//  CodeBasedUI
//
//  Created by 星野恵瑠 on 2015/01/04.
//  Copyright (c) 2015年 星野恵瑠. All rights reserved.
//

import UIKit

class MainView: UIView {
	
	// Create main label to display "Hello World!"
	let mainLabel: UILabel
	
	override init(frame: CGRect) {
		
		// Create the main label
		self.mainLabel = UILabel()
		
		// Set the text for main label
		self.mainLabel.text = "Hello World!"
		
		// Set the text alignment for main label
		self.mainLabel.textAlignment = .center
		
		// Initilize super class
		super.init(frame: frame)
		
		// Set self background color
		self.backgroundColor = .white
		
		// Display main label
		self.addSubview(mainLabel)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		
		// Don't forget to call `super.layoutSubviews()`
		super.layoutSubviews()
		
		// Get the desired size for main label from self size through `sizeThatFits(_:)`
		let labelSize = self.mainLabel.sizeThatFits(self.bounds.size)
		
		// Calculate the origin point to put main label at the center of view
		let x = (self.bounds.width - labelSize.width) / 2
		let y = (self.bounds.height - labelSize.height) / 2
		let labelOrigin = CGPoint(x: x, y: y)
		
		// set `frame` to main label to layout it
		self.mainLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
		
	}
	
}
