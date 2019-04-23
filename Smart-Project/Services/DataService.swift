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
    Test(title: "تست شخصیت شناسی مایرز-بریگز MBTI", imageName: "MBTI.png", discription: "تست تیپ شخصیت و شغل مربوط به آن"),
    Test(title: "تست هوش تصویری Raven", imageName: "IQ.png", discription: "نمره هوش شما از لحاظ پردازش تصویر"),
    Test(title: "تست هوش هیجانی Baron", imageName: "EQ.png", discription: "توانایی شما برای کنترل احساسات درجهت انجام کار"),
    Test(title: "پروفایل DISC", imageName: "DISC.png", discription: "آگاهی نسبت به میزان انگیزه برای انجام کاری"),
    Test(title: "تست سبک انگیزشی", imageName: "DMSI.png", discription: "انجام چه کاری باعث ایجاد انگیزه درشما می شود"),
    Test(title: "تست توانایی‌های شناختی", imageName: "Cognitive.png", discription: "برآیند توانایی شناختی شما در مسایل"),
    Test(title: "تست شخصیت شناسی Hartman", imageName: "Hartman.png", discription:"تعیین رنگ شخصیت شما و معانی آن"),
    Test(title: "تست شخصت شناسی Neo", imageName: "Neo.png", discription: "تاثیر ۵ عامل اصلی در شخصیت شما"),
    Test(title: "تست سبک حل تعارض TKI", imageName: "TKI.png", discription: "سبک حل تعارض بین شما و بقیه افراد چگونه است"),
    Test(title: "سبک برخورد با استرس CSI", imageName: "CSI.png", discription: "با نحوه مدیریت استرس خود آشنا شوید"),
    Test(title: "شناسایی لنگرگاه های مسیر شغلی", imageName: "Anchor.png", discription: "برآیند انتظارات شما از شغل خود"),
    Test(title: "تست سلامت بهداشت عمومی", imageName: "GHQ.png", discription: "وضعیت سلامت عمومی شما"),
    Test(title: "تست سلامت بهداشت عمومی", imageName: "GHQ.png", discription: "وضعیت سلامت عمومی شما")
    ]
    
    func getTests() -> [Test] {
        return tests
    }
}
