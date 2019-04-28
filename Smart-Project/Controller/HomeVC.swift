//
//  ViewController.swift
//  Smart-Project
//
//  Created by Omid on 14.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit
import MSCircularSlider
import SwiftDate

class HomeVC: UIViewController, UITextViewDelegate {
    
    
    
    @IBOutlet weak var slider: MSGradientCircularSlider!
    @IBOutlet weak var weightEmotionsSlider: MSCircularSlider!
    @IBOutlet public weak var moodsLabel: UILabel!
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var todayTime: UILabel!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iran = Region(calendar: Calendars.persian, zone: Zones.asiaTehran, locale: Locales.persianIran)
        SwiftDate.defaultRegion = iran
        
        let iranDateTime = DateInRegion()
        
        todayDate.text = iranDateTime.toFormat("yyyy/MM/dd", locale: Locales.persian)
        todayTime.text = iranDateTime.toFormat("hh:mm:ss", locale: Locales.persian)
        
        
        moodsLabel?.layer.masksToBounds = true
        moodsLabel?.layer.cornerRadius = 6
        
    }
    
    @IBAction func sliderChanged(_ sender: MSGradientCircularSlider) {
        
        _ = moodTextUpdate(sliderValue: slider.currentValue, weightSliderValue: weightEmotionsSlider.currentValue)
        
        if sender.currentValue == 1{

            slider.handleImage = UIImage(named: "happiness.png")
            
        } else if sender.currentValue == 2 {
            slider.handleImage = UIImage(named: "loved.png")
            
        } else if sender.currentValue == 3 {
            slider.handleImage = UIImage(named: "surprise.png")
            
        } else if sender.currentValue == 4 {
            slider.handleImage = UIImage(named: "anger.png")

        } else if sender.currentValue == 5 {
            slider.handleImage = UIImage(named: "sadness.png")
            
        } else if sender.currentValue == 6 {
            slider.handleImage = UIImage(named: "disgust.png")
            
        } else if sender.currentValue == 7 {
            slider.handleImage = UIImage(named: "fear.png")
            
        } else if sender.currentValue == 0 {
            slider.handleImage = nil
        }

    }
    
    @IBAction func weightSliderChanged(_ sender: MSCircularSlider) {

     _ = moodTextUpdate(sliderValue: slider.currentValue, weightSliderValue: weightEmotionsSlider.currentValue)
  
    }
    
    func moodTextUpdate(sliderValue: Double,weightSliderValue: Double ) -> String! {
        
        let sliderValue = slider.currentValue
        let weightSliderValue = weightEmotionsSlider.currentValue
        switch (sliderValue, weightSliderValue) {
        case (0,0):
            moodsLabel.text = "چطوری؟"
        case (1,0):
            moodsLabel.text = "🙂"
        case (2,0):
            moodsLabel.text = "😌"
        case (3,0):
            moodsLabel.text = "😯"
        case (4,0):
            moodsLabel.text = "😒"
        case (5,0):
            moodsLabel.text = "😕"
        case (6,0):
            moodsLabel.text = "😏"
        case (7,0):
            moodsLabel.text = "🤭"
        case (0,1):
            moodsLabel.text = "چطوری؟"
        case (1,1):
            moodsLabel.text = "😊"
        case (2,1):
            moodsLabel.text = "☺️"
        case (3,1):
            moodsLabel.text = "😧"
        case (4,1):
            moodsLabel.text = "🤨"
        case (5,1):
            moodsLabel.text = "☹️"
        case (6,1):
            moodsLabel.text = "😤"
        case (7,1):
            moodsLabel.text = "😨"
        case (0,2):
            moodsLabel.text = "چطوری؟"
        case (1,2):
            moodsLabel.text = "😁"
        case (2,2):
            moodsLabel.text = "😍"
        case (3,2):
            moodsLabel.text = "😵"
        case (4,2):
            moodsLabel.text = "😑"
        case (5,2):
            moodsLabel.text = "😢"
        case (6,2):
            moodsLabel.text = "🤢"
        case (7,2):
            moodsLabel.text = "😰"
        case (0,3):
            moodsLabel.text = "چطوری؟"
        case (1,3):
            moodsLabel.text = "😂"
        case (2,3):
            moodsLabel.text = "🥰"
        case (3,3):
            moodsLabel.text = "🤯"
        case (4,3):
            moodsLabel.text = "😡"
        case (5,3):
            moodsLabel.text = "😭"
        case (6,3):
            moodsLabel.text = "🤮"
        case (7,3):
            moodsLabel.text = "😱"
        default:
            moodsLabel.text = "●●●"
        }
        
        return moodsLabel.text
        
    }
 
}


