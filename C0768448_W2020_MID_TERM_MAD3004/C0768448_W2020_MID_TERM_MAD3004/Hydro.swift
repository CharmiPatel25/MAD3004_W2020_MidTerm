//
//  Hydro.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Hydro:Bill
{
    var agencyName:String
    var unitsConsumed:Int
    
    init(billID:Int, billDate:Date,billType:BillType,agencyName:String,unitsConsumed:Int) {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        super.init(billID: billID, billDate: billDate, billType: billType)
    }
}
