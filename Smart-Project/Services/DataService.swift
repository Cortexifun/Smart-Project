//
//  DataService.swift
//  Smart-Project
//
//  Created by Omid on 23.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let tests = [
    Test(title: "تست شخصیت شناسی مایرز-بریگز", imageName: "MBTI.png", discription: "تست تیپ شخصیت و شغل مربوط به آن"),
    Test(title: "تست هوش هیجانی Baron", imageName: "EQ.png", discription: "توانایی شما برای کنترل احساسات درجهت انجام کار"),
    Test(title: "پروفایل DISC", imageName: "DISC.png", discription: "آگاهی نسبت به میزان انگیزه برای انجام کاری"),
//    Test(title: "<#T##String#>", imageName: "<#T##String#>", discription: "<#T##String#>"),
//    Test(title: "<#T##String#>", imageName: "<#T##String#>", discription: "<#T##String#>"),
//    Test(title: "<#T##String#>", imageName: "<#T##String#>", discription: "<#T##String#>")
    ]
    
    func getTests() -> [Test] {
        return tests
    }
}
