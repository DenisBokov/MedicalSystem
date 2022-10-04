//
//  User.swift
//  MedicalSystem
//
//  Created by Denis Bokov on 03.10.2022.
//

import Foundation

class User {
    let firstName: String = ""
    let lastName: String = ""
    let middleName: String = ""
    let birthDay: String = ""
    
    
    var fullName: String {
        "\(firstName) \(lastName) \(middleName)"
    }
}

class Authentication {
    var email: String = ""
    var password: String = ""
}
