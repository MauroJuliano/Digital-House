//
//  extensions.swift
//  The Umbrella
//
//  Created by Lestad on 2020-08-05.
//  Copyright © 2020 Lestad. All rights reserved.
//

import Foundation

extension Double {
    func rounded(toPlaces places:Int) -> Double{
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
extension Date{
    func dayOfTheWeek() -> String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
