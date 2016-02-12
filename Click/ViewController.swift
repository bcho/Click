//
//  ViewController.swift
//  Click
//
//  Created by hbc on 2/12/16.
//  Copyright © 2016 hbc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton!
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 100, 100, 50)
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("\(counter)", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.addTarget(self, action: "onButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        self.view.backgroundColor = UIColor.whiteColor()
    }

    func onButtonClicked(sender: UIButton!) {
        counter = counter + 1
        button.setTitle("\(counter)", forState: UIControlState.Normal)
        
        if counter % 5 == 0 {
            self.view.backgroundColor = UIColor(
                red: CGFloat(Float(arc4random()) / Float(UINT32_MAX)),
                green: CGFloat(Float(arc4random()) / Float(UINT32_MAX)),
                blue: CGFloat(Float(arc4random()) / Float(UINT32_MAX)),
                alpha: CGFloat(1.0))
        }
    }

}

