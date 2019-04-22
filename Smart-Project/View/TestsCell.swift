//
//  TestsCell.swift
//  Smart-Project
//
//  Created by Omid on 22.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class TestsCell: UITableViewCell {
    
    @IBOutlet weak var testImage : UIImageView!
    @IBOutlet weak var testTitle : UILabel!
    @IBOutlet weak var testDisc : UILabel!

    func updateViews(test: Test) {
        testImage.image = UIImage(named: test.imageName)
        testTitle.text = test.title
        testDisc.text = test.discription
        
    }

}
