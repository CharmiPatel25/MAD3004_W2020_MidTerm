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
    
    var customerID:String
    var firstName:String
    var lastName:String
    var fullName:String
    {
        return " \(firstName) \(lastName)"
    }
    var emailID:String?
    var totalAmountToPay:Float=0
    var bills=Array<Bill>()

    init(customerID:String,firstName:String,lastName:String,emailID:String) {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        if isEmailValid(email: emailID)
       {
           self.emailID=emailID
       }
        else
        {
            print("Invalid Email ID")
        }
    }
    
    
      func isEmailValid(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    func addBill(bill:Bill)
    {
        bills.append(bill)
    }
    
    func calculateTotal()->Float
    {
        if bills.count == 0
        {
            print("No bill found with given index")
        }
        for b in bills
        {
            totalAmountToPay += b.totalAmount
        }
        return totalAmountToPay
    }
    
    func Display() {
        print("Custome ID : \(customerID)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(String(describing: emailID))")
        print("               ---- Bill Information ----")
        print("        ******************************************")
        for b in bills
        {
            
            b.Display()
            print("        ******************************************")
        }
        print("          Total Bill Amount to Pay : \(calculateTotal())")
        print("        ******************************************")
    }
}
