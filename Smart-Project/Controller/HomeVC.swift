//
//  ViewController.swift
//  Smart-Project
//
//  Created by Omid on 14.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit
import MSCircularSlider

class HomeVC: UIViewController {
    
    @IBOutlet weak var slider: MSGradientCircularSlider!
    @IBOutlet public weak var moodsLabel: UILabel!
    @IBOutlet weak var whyLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moodsLabel.text = "عالی ام"
        whyLabel.text = " "
        textView.isHidden = true
        
        moodsLabel?.layer.masksToBounds = true
        moodsLabel?.layer.cornerRadius = 6
        
        

    }
    
    @IBAction func sliderChanged(_ sender: MSGradientCircularSlider) {
  
        if sender.currentValue == 1 {
            moodsLabel.text = "خیلی خوب"
        } else if sender.currentValue == 2 {
            moodsLabel.text = "خوبم"
        } else if sender.currentValue == 3 {
            moodsLabel.text = "حس خاصی ندارم"
        } else if sender.currentValue == 4 {
            moodsLabel.text = "تعریفی نداره"
        } else if sender.currentValue == 5 {
            moodsLabel.text = "خوب نیستم"
        } else if sender.currentValue == 6 {
            moodsLabel.text = "حالم بده"
        } else if sender.currentValue == 7 {
            moodsLabel.text = "افتضاح"
        } else if sender.currentValue == 0 {
            moodsLabel.text = "عالی ام"
        }
       
        if moodsLabel.text == "تعریفی نداره" {
            whyLabel.text = "از احساساتت برام بگو"
            textView.isHidden = false
        }
        
    
        
    }
    
    
    
    
    

}

