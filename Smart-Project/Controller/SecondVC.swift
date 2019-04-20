//
//  SecondVC.swift
//  Smart-Project
//
//  Created by Omid on 14.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        
        label.text = "\(sliderValue)"
        
    }
    
}

