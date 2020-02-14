//
//  Customer.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Customer:IDisplay
{
    
    var customerID:Int
    var firstName:String
    var lastName:String
    var fullName:String
    {
        return " \(firstName) \(lastName)"
    }
    var emailID:String
    var totalAmountToPay:Float=0
    var bills=[Int:Bill]()

    init(customerID:Int,firstName:String,lastName:String,emailID:String) {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        self.emailID=emailID
    }
    
    func addBill(bill:Bill,customerID:Int)
    {
        bills.updateValue(bill, forKey: customerID)
    }
    
    func calculateTotal()->Float
    {
        if bills.count == 0
        {
            print("No bill found with given index")
        }
        for b in bills
        {
            totalAmountToPay+=b.value.totalAmount
        }
        return totalAmountToPay
    }
    
    func Display() {
        print("Custome ID : \(customerID)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(emailID)")
        print("----Bill Information ----")
        for b in bills
        {
            print("******************************************")
            b.value.Display()
            print("******************************************")
        }
        print("Total Bill Amount to Pay : \(calculateTotal())")
        print("******************************************")
    }
}
