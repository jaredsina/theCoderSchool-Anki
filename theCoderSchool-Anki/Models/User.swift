//
//  User.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/22/25.
//

import Foundation

/// Similiar to mongodb Schema models files
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
