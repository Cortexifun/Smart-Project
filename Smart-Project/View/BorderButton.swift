//
//  BorderButton.swift
//  Smart-Project
//
//  Created by Omid on 17.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 8
    }
}
