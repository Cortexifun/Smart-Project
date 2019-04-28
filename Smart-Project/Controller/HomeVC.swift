//
//  ViewController.swift
//  Smart-Project
//
//  Created by Omid on 14.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit
import MSCircularSlider

class HomeVC: UIViewController, UITextViewDelegate {
    
    
    
    @IBOutlet weak var moodWeightLabel: UILabel!
    @IBOutlet weak var slider: MSGradientCircularSlider!
    @IBOutlet weak var weightEmotionsSlider: MSCircularSlider!
    @IBOutlet public weak var moodsLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        //moodsLabel.text = "چطوری؟"
        
        moodsLabel?.layer.masksToBounds = true
        moodsLabel?.layer.cornerRadius = 6
        
        moodWeightLabel?.layer.masksToBounds = true
        moodWeightLabel?.layer.cornerRadius = 6
    }
    
    @IBAction func sliderChanged(_ sender: MSGradientCircularSlider) {
  
        moodTextUpdate(sliderValue: slider.currentValue, weightSliderValue: weightEmotionsSlider.currentValue)


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

       
      moodTextUpdate(sliderValue: slider.currentValue, weightSliderValue: 0)
  
    }
    
    func moodTextUpdate(sliderValue: Double,weightSliderValue: Double ) -> String! {
        
        let sliderValue = slider.currentValue
        let weightSliderValue = weightEmotionsSlider.currentValue
        switch (sliderValue, weightSliderValue) {
        case (0,0):
            print("0,0")
            moodsLabel.text = "چطوری؟"
        case (1,0):
            print("1,0")
            moodsLabel.text = "🙂"
        case (2,0):
            print("2,0")
            moodsLabel.text = "😌"
        case (3,0):
            print("3,0")
            moodsLabel.text = "😯"
        case (4,0):
            print("4,0")
            moodsLabel.text = "😒"
        case (5,0):
            print("5,0")
            moodsLabel.text = "😕"
        case (6,0):
            print("6,0")
            moodsLabel.text = "😏"
        case (7,0):
            print("7,0")
            moodsLabel.text = "🤭"
        case (0,1):
            print("0,1")
            moodsLabel.text = "چطوری؟"
        case (1,1):
            print("1,1")
            moodsLabel.text = "😊"
        case (2,1):
            print("2,1")
            moodsLabel.text = "☺️"
        case (3,1):
            print("3,1")
            moodsLabel.text = "😧"
        case (4,1):
            print("4,1")
            moodsLabel.text = "🤨"
        case (5,1):
            print("5,1")
            moodsLabel.text = "☹️"
        case (6,1):
            print("6,1")
            moodsLabel.text = "😤"
        case (7,1):
            print("7,1")
            moodsLabel.text = "😳"
        case (0,2):
            print("0,2")
            moodsLabel.text = "چطوری؟"
        case (1,2):
            print("1,2")
            moodsLabel.text = "😁"
        case (2,2):
            print("2,2")
            moodsLabel.text = "😍"
        case (3,2):
            print("3,2")
            moodsLabel.text = "😵"
        case (4,2):
            print("4,2")
            moodsLabel.text = "😑"
        case (5,2):
            print("5,2")
            moodsLabel.text = "😢"
        case (6,2):
            print("6,2")
            moodsLabel.text = "🤢"
        case (7,2):
            print("7,2")
            moodsLabel.text = "😨"
        case (0,3):
            print("0,3")
            moodsLabel.text = "چطوری؟"
        case (1,3):
            print("1,3")
            moodsLabel.text = "😂"
        case (2,3):
            print("2,3")
            moodsLabel.text = "🥰"
        case (3,3):
            print("3,3")
            moodsLabel.text = "🤯"
        case (4,3):
            print("4,3")
            moodsLabel.text = "😡"
        case (5,3):
            print("5,3")
            moodsLabel.text = "😭"
        case (6,3):
            print("6,3")
            moodsLabel.text = "🤮"
        case (7,3):
            print("7,3")
            moodsLabel.text = "😱"
        default:
            moodsLabel.text = "●●●"
        }
        
        return moodsLabel.text
        
    }
    
   
    
    
    
}


