//
//  CalendarVC.swift
//  Smart-Project
//
//  Created by Omid on 29.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class CalendarVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var calendar: UICollectionView!
    @IBOutlet weak var monthLabel: UILabel!
    
    let Months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    let daysOfMonth = ["Monday","Thuesday","Wednsday","Thursday","Friday","Saturday","Sunday"]
    var daysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonth = String()
    var numberOfEmptyBox = Int()
    var nextNumberOfEmptyBox = Int()
    var previousNumberOfEmptyBox = Int()
    var direction = 0
    var positionIndex = 0
    var LeapYearCounter = 2
    var dayCounter = 0
    
    // let calendar = Calendar.current
    
   
    @IBAction func nextMonth(_ sender: Any) {
        
        switch currentMonth {
        case "December":
            direction = 1
            
            month = 0
            year += 1
            
            if LeapYearCounter  < 5 {
                LeapYearCounter += 1
            }
            
            if LeapYearCounter == 4 {
                daysInMonths[1] = 29
            }
            
            if LeapYearCounter == 5{
                LeapYearCounter = 1
                daysInMonths[1] = 28
            }
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            monthLabel.text = "\(currentMonth) \(year)"
            
            calendar.reloadData()
        default:
            direction = 1
            
            GetStartDateDayPosition()
            
            month += 1
            
            currentMonth = Months[month]
            monthLabel.text = "\(currentMonth) \(year)"
            
            calendar.reloadData()
        }
    }
    @IBAction func lastMonth(_ sender: Any) {
        
        switch currentMonth {
        case "January":
            direction = -1
            
            month = 11
            year -= 1
            
            if LeapYearCounter > 0{
                LeapYearCounter -= 1
            }
            if LeapYearCounter == 0{
                daysInMonths[1] = 29
                LeapYearCounter = 4
            }else{
                daysInMonths[1] = 28
            }
            
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            monthLabel.text = "\(currentMonth) \(year)"
            calendar.reloadData()
            
        default:
            direction = -1
            
            month -= 1
            
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            monthLabel.text = "\(currentMonth) \(year)"
            calendar.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentMonth = Months[month]
        monthLabel.text = "\(currentMonth) \(year)"
        
        if weekDay == 0 {
            weekDay = 7
        }
        GetStartDateDayPosition()

    }
    
    func GetStartDateDayPosition() {
        switch direction{
        case 0:
            numberOfEmptyBox = weekDay
            dayCounter = day
            while dayCounter>0 {
                numberOfEmptyBox = numberOfEmptyBox - 1
                dayCounter = dayCounter - 1
                if numberOfEmptyBox == 0 {
                    numberOfEmptyBox = 7
                }
            }
            if numberOfEmptyBox == 7 {
                numberOfEmptyBox = 0
            }
            positionIndex = numberOfEmptyBox
        case 1...:
            nextNumberOfEmptyBox = (positionIndex + daysInMonths[month])%7
            positionIndex = nextNumberOfEmptyBox
            
        case -1:
            previousNumberOfEmptyBox = (7 - (daysInMonths[month] - positionIndex)%7)
            if previousNumberOfEmptyBox == 7 {
                previousNumberOfEmptyBox = 0
            }
            positionIndex = previousNumberOfEmptyBox
        default:
            fatalError()
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch direction{
        case 0:
            return daysInMonths[month] + numberOfEmptyBox
        case 1...:
            return daysInMonths[month] + nextNumberOfEmptyBox
        case -1:
            return daysInMonths[month] + previousNumberOfEmptyBox
        default:
            fatalError()
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Calendar", for: indexPath) as! DateCell
        
        cell.dateLabel.textColor = UIColor.black
        
       // cell.Circle.isHidden = true
        
        if cell.isHidden{
            cell.isHidden = false
        }
        
        switch direction {      //the first cells that needs to be hidden (if needed) will be negative or zero so we can hide them
        case 0:
            cell.dateLabel.text = "\(indexPath.row + 1 - numberOfEmptyBox)"
        case 1:
            cell.dateLabel.text = "\(indexPath.row + 1 - nextNumberOfEmptyBox)"
        case -1:
            cell.dateLabel.text = "\(indexPath.row + 1 - previousNumberOfEmptyBox)"
        default:
            fatalError()
        }
        
        if Int(cell.dateLabel.text!)! < 1{ //here we hide the negative numbers or zero
            cell.isHidden = true
        }
        
        switch indexPath.row { //weekend days color
        case 5,6,12,13,19,20,26,27,33,34:
            if Int(cell.dateLabel.text!)! > 0 {
                cell.dateLabel.textColor = UIColor.lightGray
            }
        default:
            break
        }
        //if currentMonth == Months[calendars.component(.month, from: date) - 1] && year == calendars.component(.year, from: date) && indexPath.row + 1 - numberOfEmptyBox == day{
           // cell.Circle.isHidden = false
            //cell.DrawCircle()
            
       // }
        return cell
    }

    
}
