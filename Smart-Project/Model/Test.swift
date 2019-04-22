//
//  Test.swift
//  Smart-Project
//
//  Created by Omid on 23.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import Foundation

struct Test {
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var discription: String
    
    init(title: String, imageName: String, discription: String) {
        self.title = title
        self.imageName = imageName
        self.discription = discription
    }
}
