//
//  main.swift
//  C0768448_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"

var b1 = Bill(billID: "HYDY0001", billDate: formatter.date(from: "2020-02-14")!, billType: .Hydro)
var b2 = Bill(billID: "HYDY0002", billDate: Date(), billType: .Internet)
var  m1 = Mobile(billID: "MOBB002", billDate: Date(), billType: .Mobile, mobileManufacturerName: "Apple Inc.", mobilePlanName: "LTE+3G 9.5GB Promo", mobileNumber: "9078254685", internetGBUsed: 4, minutesUsed: 230, totalAmount: 50)

var  m2 = Mobile(billID: "MOBB001", billDate: Date(), billType: .Mobile, mobileManufacturerName: "Oneplus Inc.", mobilePlanName: "LTE+3G 9.5GB Promo", mobileNumber: "9078254685", internetGBUsed: 4, minutesUsed: 230, totalAmount: 40)
var c1=Customer(customerID: "C001", firstName: "Jon", lastName: "Snow", emailID: "jon@gmail.com")
c1.addBill(bill: m2)
c1.addBill(bill: m1)
c1.Display()


var customers = Array<Customer>()
customers.append(c1)
     func findCustomerByID(id:String)
    {
        for c in customers
        {
            if (id == c.customerID)
            {
                c.Display()
                
            }
            else
            {
                print("Customer  \(id) not found")
            }
        }
        
    }
print("\n\n    ****** GET Customer By ID Result ******")
//findCustomerByID(id: "C001")
findCustomerByID(id: "C009")
