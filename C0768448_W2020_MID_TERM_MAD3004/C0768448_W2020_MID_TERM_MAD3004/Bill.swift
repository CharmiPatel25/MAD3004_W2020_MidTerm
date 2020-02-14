//
//  Bill.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType
{
    case Mobile,Internet,Hydro
}
class Bill:IDisplay
{
    
    
    var billID:String
    var billDate:Date
    var totalAmount:Float=0
    var billType:BillType
    
    
    init(billID:String, billDate:Date,billType:BillType)
    {
        self.billID = billID
        self.billDate = billDate
        self.billType=billType
    }
    
    
    func Display()
    {
        print("Bill ID : \(billID)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(totalAmount)")
    }
}
