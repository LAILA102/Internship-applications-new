//
//  User.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
