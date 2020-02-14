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
    
   
    override func Display() {
        super.Display()
      //  print("Bill Amount : \(totalAmount)")
        print("Mobile Nanufacture Name : \(mobileManufacturerName)")
        print("Mobile Plan Name : \(mobilePlanName)")
        print("Mobile Number : \(mobileNumber)")
        print("Mobile Internet Used : \(internetGBUsed)")
        print("Minuted Usef : \(minutesUsed)")
        
    }
    
    
}
