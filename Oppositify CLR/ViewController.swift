//
//  ViewController.swift
//  Oppositify CLR
//
//  Created by Simon on 16/07/2017.
//  Copyright © 2017 Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        chosenColourView.backgroundColor = .orange
       oppositifiedColourView.backgroundColor = .cyan
        
    }
    


    @IBOutlet weak var chosenColourView: UIView!
    @IBOutlet weak var oppositifiedColourView: UIView!
    
    @IBAction func changered(_ sender: UISlider) {

        print(sender.value)
    }
}
