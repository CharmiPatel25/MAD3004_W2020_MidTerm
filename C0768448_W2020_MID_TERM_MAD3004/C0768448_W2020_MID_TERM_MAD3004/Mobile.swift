//
//  Mobile.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Mobile:Bill
{
    var mobileManufacturerName:String
    var mobilePlanName:String
    var mobileNumber:String
    var internetGBUsed:Float
    var minutesUsed:Float
    
    
    init(billID:String, billDate:Date,billType:BillType,mobileManufacturerName:String,mobilePlanName:String,mobileNumber:String,internetGBUsed:Float,minutesUsed:Float,totalAmount:Float)
    {
        
        self.mobileManufacturerName=mobileManufacturerName
        self.mobilePlanName=mobilePlanName
        self.mobileNumber=mobileNumber
        self.internetGBUsed=internetGBUsed
        self.minutesUsed=minutesUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
        
        self.totalAmount=totalAmount
    }
    
   
    func isNumberValid(mobileNumber: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: mobileNumber)
        return result
    }
    
    
    override func Display() {
        super.Display()
      //  print("Bill Amount : \(totalAmount)")
        print("\t Mobile Nanufacture Name : \(mobileManufacturerName)")
        print("\t Mobile Plan Name : \(mobilePlanName)")
        print("\t Mobile Number : \(mobileNumber)")
        print("\t Mobile Internet Used : \(internetGBUsed.internetGBUnit())")
        print("\t Minuted Usef : \(minutesUsed.minutesUsedMobile())")
        
    }
    
    
}
