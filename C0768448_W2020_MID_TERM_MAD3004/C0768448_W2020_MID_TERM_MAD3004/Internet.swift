//
//  Internet.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet:Bill
{
    var providerName:String
    var internetGBUsed:Float
    
    init(billID:Int, billDate:Date,billType:BillType,providerName:String,internetGBUsed:Float,totalAmount:Float)
    {
        self.providerName=providerName
        self.internetGBUsed=internetGBUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
        self.totalAmount=totalAmount
    }
        
        override func Display()
        {
            super.Display()
            print("Provider Name : \(providerName)")
            print("Internet GB Used : \(internetGBUsed)")
        }
    
}
