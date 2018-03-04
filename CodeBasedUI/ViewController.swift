//
//  ViewController.swift
//  CodeBasedUI
//
//  Created by 星野恵瑠 on 2015/01/04.
//  Copyright (c) 2015年 星野恵瑠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// Create mainView
		let mainView = MainView(frame: self.view.bounds)
		
		// Show mainView
		self.view.addSubview(mainView)
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}
