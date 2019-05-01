//
//  Calendar.swift
//  Smart-Project
//
//  Created by Omid on 01.05.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit
//import SwiftDate

let date = Date()
let calendars = Calendar.current

var day = calendars.component(.day, from: date)
var weekDay = calendars.component(.weekday, from: date) - 1
var month = calendars.component(.month, from: date) - 1
var year = calendars.component(.year, from: date)

