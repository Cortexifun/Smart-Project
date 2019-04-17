//
//  TabBarExt.swift
//  Smart-Project
//
//  Created by Omid on 17.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

extension UITabBar {
    
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        super.sizeThatFits(size)
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 45
        return sizeThatFits
    }
}
