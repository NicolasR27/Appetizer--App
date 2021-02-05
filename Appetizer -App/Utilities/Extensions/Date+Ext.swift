//
//  Date+Ext.swift
//  Appetizer App
//
//  Created by Nicolas Rios on 2/4/21.
//

import Foundation

extension Date{
    var eighteenYearsago: Date{
        Calendar.current.date(byAdding: .year, value: -18,to: Date())!
    }
   
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: 110,to: Date())!
        
    }
}
