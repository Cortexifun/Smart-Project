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
    @IBOutlet public weak var moodsLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        moodsLabel.text = "عالی ام"
       // textView.isHidden = true
        
        // self.textView.delegate = self
        
        moodsLabel?.layer.masksToBounds = true
        moodsLabel?.layer.cornerRadius = 6
        
        moodWeightLabel?.layer.masksToBounds = true
        moodWeightLabel?.layer.cornerRadius = 6
        
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
       
//        if sender.currentValue > 0 {
//            textView.isHidden = false
//        }
        
        
        func numberOfWordsInTextView(textView: UITextView) -> Int {
            
            textView.resignFirstResponder()  //if desired
            let emotionText = textView.text
            let components = emotionText?.components(separatedBy:.whitespacesAndNewlines)
            let words = components!.filter { !$0.isEmpty }
            print(emotionText!)
            print(words.count)
            return words.count
        }
        
        let test : Int
        test = numberOfWordsInTextView(textView: textView)
        print(test)
    }
    
}


