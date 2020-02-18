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
    lazy var bills=[String : Bill]()

    init(customerID:String,firstName:String,lastName:String,emailID:String) throws {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        if isEmailValid(email: emailID)
       {
          
           self.emailID=emailID
       }
        else
        {
              print("Invalid Email ID for \(customerID) : \(emailID) ")
              throw CustomerError.invalidEmail
    
        }
    }
    
    
      func isEmailValid(email:String)  -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    func addBill(bill: Bill, billID: String)
    {
        bills.updateValue(bill, forKey: billID)
    }
    
    func removeBill(billID:String)
    {
        bills.removeValue(forKey: billID)
    }

    func calculateTotal()->Float
    {
        if bills.count == 0
        {
            print("\t No bill found for \(customerID)")
        }
        for b in bills
        {
            totalAmountToPay += b.value.totalAmount
        }
        return totalAmountToPay
    }
    

    
    func Display() {
        print("Custome ID : \(customerID)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(String(describing: emailID))")
        print("\t ---- Bill Information ----")
        print("\t ******************************************")
        for b in bills
        {
            
            b.value.Display()
            print("\t ******************************************")
        }
        print("\t Total Bill Amount to Pay : \(calculateTotal())")
        print("\t ****************************************** \n \n")
    }
}
