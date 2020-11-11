//
//  converteMoeda.swift
//  11_11_conversordemoedas
//
//  Created by Lestad on 2020-11-11.
//

import Foundation

class ConverteMoeda: NSObject{

    var brl: String!
    var usd: String!
    var rates: [String: Double]!
    
    init(fromDictionary dictionary: [String: Any]) {
        brl = dictionary["BRL"] as? String
        usd = dictionary["USD"] as? String
        rates = dictionary["rates"] as? [String: Double]
    }
    func getValue(type: CurencyType) -> Double?{
        if let value = rates[type.rawValue]{
            return value
        }
        return nil
    }
}
