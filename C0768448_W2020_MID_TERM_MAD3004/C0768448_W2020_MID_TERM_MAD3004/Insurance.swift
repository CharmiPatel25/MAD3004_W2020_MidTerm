//
//  Insurance.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Insuarnce:Bill
{
    var providerName:String
    var type:String
    var startDate:Date
    var endDate:Date
    var totalDays:Int
    var totalinstallment:Int

    
    init(billID:String, billDate:Date,billType:BillType,providerName:String,type:String,startDate:Date,endDate:Date,totalinstallment:Int) {
        self.providerName=providerName
        self.type=type
        self.startDate=startDate
        self.endDate=endDate
        self.totalDays=Calendar.current.dateComponents([.day], from: startDate,to: endDate).day!
        self.totalinstallment=totalinstallment
        super.init(billID: billID, billDate: billDate, billType: .Insurance)
        totalAmount=Float(totalinstallment*100)
    }
    
    override func Display() {
        super.Display()
        print("\t Provider Name : \(self.providerName)")
        print("\t Provider Type : \(self.type)")
        print("\t Start Date : \(self.startDate)")
        print("\t Start Date : \(self.startDate)")
        print("\t End Date : \(self.endDate)")
        print("\t Total Day : \(self.totalDays)")
        print("\t Total Installments : \(self.totalinstallment)")
    }
}
