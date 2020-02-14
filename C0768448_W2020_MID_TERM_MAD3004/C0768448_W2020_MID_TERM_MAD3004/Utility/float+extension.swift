//
//  float+extension.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
extension Float
{
    func internetGBUnit()->String
    {
        return "\(self) GB"
    }
    
    func minutesUsedMobile()->String
    {
        return "\(self) Minutes"
    }
    
    func totalBill()->String
    {
        return "$ \(self)"
    }
}
