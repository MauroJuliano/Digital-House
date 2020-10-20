//
//  CurrentWeather.swift
//  The Umbrella
//
//  Created by Lestad on 2020-08-05.
//  Copyright © 2020 Lestad. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CurrentWeather{
    
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Int!
    
    var cityName: String{
        if _cityName == nil{
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String{
        if _date == nil{
            _date == ""
        }
        return _date
    }
    var weatherType: String{
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Int{
        if _currentTemp == nil{
            _currentTemp == 1
        }
        return _currentTemp
    }
    func downloadCurrentWeather(completed: @escaping DownloadComplete){
        print(API_URL)
        AF.request(API_URL).responseJSON { (response) in

            let result = response.result
            let jsonObject = JSON(response.data!)
            self._cityName = jsonObject["name"].stringValue
            self._weatherType = jsonObject["weather"][0]["main"].stringValue
            
            let tempDate=jsonObject["dt"].double
            let convertedUnixDate = Date(timeIntervalSince1970: tempDate!)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .none
            let currentDate = dateFormatter.string(from: convertedUnixDate)
            self._date = currentDate
            
            let downloadedTemp = jsonObject["main"]["temp"].double
            let tmp = downloadedTemp! - 273.15
            self._currentTemp = Int(round(tmp))
            
            print(self._cityName!)
            print(self._date!)
            print(self._currentTemp!)
            print(self._weatherType!)
            completed()
    }
    }
}
