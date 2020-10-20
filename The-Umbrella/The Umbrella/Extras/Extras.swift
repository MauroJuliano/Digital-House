//
//  Extras.swift
//  The Umbrella
//
//  Created by Lestad on 2020-08-05.
//  Copyright © 2020 Lestad. All rights reserved.
//

import Foundation

let API_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Locations.sharedInstance.latitude!)&lon=\(Locations.sharedInstance.longitude!)&appid=a0c484c7ab240f57f26aea649e95fd64"

typealias DownloadComplete = () -> ()
