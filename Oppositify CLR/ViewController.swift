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
        
        chosenColourView.backgroundColor = .black
        oppositifiedColourView.backgroundColor = .white
        
    }
    
    
    
    @IBOutlet weak var chosenColourView: UIView!
    @IBOutlet weak var oppositifiedColourView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func changeRed(_ sender: UISlider) {
        print("Red \(sender.value)")
        updateColour()
    }
    @IBAction func changeGreen(_ sender: UISlider) {
        print("Green \(sender.value)")
        updateColour()

    }
    @IBAction func changeBlue(_ sender: UISlider) {
        print("Blue \(sender.value)")
        updateColour()

    }
    func updateColour() {
        let r = redSlider.value
        let g = greenSlider.value
        let b = blueSlider.value
        let colour = UIColor(red: CGFloat(r / 100), green: CGFloat(g / 100), blue: CGFloat(b / 100), alpha: 1)
        chosenColourView.backgroundColor = colour
        let oppositeColour = UIColor(red: CGFloat( 1 - r / 100), green: CGFloat(1 - g / 100), blue: CGFloat(1 - b / 100), alpha: 1)
        oppositifiedColourView.backgroundColor = oppositeColour
    }
}
