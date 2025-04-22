//
//  Extensions.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/22/25.
//

import Foundation


/// have to read up on codable and encodable
extension Encodable{
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else{
            return [:] // return empty list if you cant encode the data
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:] // convert data to nice json object
        }catch{
            return [:] // if any error happens catch it
        }
    }
}
