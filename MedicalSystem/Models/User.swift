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
    let auth: Authentication
    
    var fullName: String {
        "\(firstName) \(lastName) \(middleName)"
    }
    
    init(auth: Authentication) {
        self.auth = auth
    }
}

class Authentication {
    var email: String = ""
    var password: String = ""
}
 
