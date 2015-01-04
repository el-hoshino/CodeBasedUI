//
//  MainView.swift
//  CodeBasedUI
//
//  Created by 星野恵瑠 on 2015/01/04.
//  Copyright (c) 2015年 星野恵瑠. All rights reserved.
//

import UIKit

class MainView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
	
	// Create main label to display "Hello World!"
	let mainLabel: UILabel
	
	override init(frame: CGRect) {
		
		// Write frame size to mainView
		let mainViewFrame = frame
		
		// Create a constant for main label size
		let mainLabelSize = CGSizeMake(240, 30)
		
		// Calculate main label position based on the frame size and label size.
		let mainLabelOrigin = CGPointMake(
			(mainViewFrame.width - mainLabelSize.width) / 2,
			(mainViewFrame.height - mainLabelSize.height) / 2
		)
		
		// Create a constant for the frame of main label
		let mainLabelFrame = CGRectMake(mainLabelOrigin.x, mainLabelOrigin.y, mainLabelSize.width, mainLabelSize.height)
		
		// Create the main label
		mainLabel = UILabel(frame: mainLabelFrame)
		
		// Set the text for main label
		mainLabel.text = "Hello World!"
		
		// Set the text alignment for main label
		mainLabel.textAlignment = .Center
		
		// Initilize super class
		super.init(frame: frame)
		
		// Set self background color
		self.backgroundColor = UIColor.whiteColor()
		
		// Display main label
		self.addSubview(mainLabel)
	}

	required init(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}

}
