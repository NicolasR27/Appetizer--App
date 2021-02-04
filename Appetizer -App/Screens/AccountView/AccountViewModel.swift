//
//  AccountViewModel.swift
//  Appetizer App
//
//  Created by Nicolas Rios on 2/3/21.
//


import SwiftUI

final class AccountViewModel:ObservableObject{
    
    @Published var firstName = ""
    @Published var LastName = ""
    @Published var email = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
}
