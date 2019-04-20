//
//  ViewController.swift
//  Smart-Project
//
//  Created by Omid on 14.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit
import HGCircularSlider

class HomeVC: UIViewController {
    
    let circularSlider = CircularSlider(frame: CGRect (x: 16, y: 178, width: 288, height: 193))
    
    @IBOutlet weak var moodSlider: CircularSlider!
    
    @IBOutlet weak var mood: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func moodSliderChanged(_ sender: CircularSlider) {
        let slidercurrentValue = mood
        mood.text = "\(slidercurrentValue)"

    }
    
}

