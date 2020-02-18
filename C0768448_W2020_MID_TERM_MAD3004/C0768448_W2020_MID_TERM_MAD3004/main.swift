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


    let m1 =  Mobile(billID: "MOBB001", billDate: formatter.date(from: "2019-01-15")!, billType: .Mobile, mobileManufacturerName: "OnePlus", mobilePlanName: "4G", mobileNumber: "64722879", internetGBUsed: 5, minutesUsed: 150, totalAmount: 90)
    
    let i1=Internet(billID: "INTB001", billDate: formatter.date(from: "2018-05-24")!, billType: .Internet, providerName: "ROgers", internetGBUsed: 8, totalAmount: 50)
    
    let h1=Hydro(billID: "HYDB001", billDate: formatter.date(from: "2018-11-24")!, billType: .Hydro, agencyName: "Tata", unitsConsumed: 552, totalAmount: 400)
    
    let m2 =  Mobile(billID: "MOBB002", billDate: formatter.date(from: "2019-12-31")!, billType: .Mobile, mobileManufacturerName: "Apple Inc.", mobilePlanName: "LTE+3G 9.5GB Promo", mobileNumber: "9078254685", internetGBUsed: 4, minutesUsed: 230, totalAmount: 40)
    
    let i2=Internet(billID: "INTB002", billDate: formatter.date(from: "2019-12-31")!, billType: .Internet, providerName: "Roger5G", internetGBUsed: 500, totalAmount: 800)
    
    let h2=Hydro(billID: "HYDB002", billDate: formatter.date(from: "2019-11-30")!, billType: .Hydro, agencyName: "Reliance", unitsConsumed: 790, totalAmount: 1000)

let inu1=Insuarnce(billID: "INUB001", billDate: formatter.date(from: "2019-02-15")!, billType: .Insurance, providerName: "LIC", type: "Home insurance", startDate: formatter.date(from: "2018-01-15")!, endDate: formatter.date(from: "2018-12-14")!, totalinstallment: 11)
    
var c1 =  Customer(customerID: "C001", firstName: "Jon", lastName: "Snow", emailID: "jon@gmail.com")
var c2 =  Customer(customerID: "C002", firstName: "Sansa", lastName: "Stark", emailID: "sansagmail.com")
var c3 = Customer(customerID: "C003", firstName: "Danerys", lastName: "Targeryen", emailID: "danny@gmail.com")

var c4 = Customer(customerID: "C004", firstName: "Robert", lastName: "Baratheon", emailID: "robert@gmail.com")

    c1.addBill(bill: m1, billID: m1.billID)
    c1.addBill(bill: i1, billID: i1.billID)
    c1.addBill(bill: h1, billID: h1.billID)
    
    c2.addBill(bill: m2, billID: m2.billID)
    c2.addBill(bill: i2, billID: i2.billID)
    
    c3.addBill(bill: h2, billID: h2.billID)

c4.addBill(bill: inu1, billID: inu1.billID)
    
    
    c1.Display()
    c2.Display()
    c3.Display()
c4.Display()




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
                print("\t Customer  \(id) not found")
            }
        }
        
    }
print("\t ****** GET Customer By ID Result ****** \n")
findCustomerByID(id: "C001")
//findCustomerByID(id: "C009")

 
