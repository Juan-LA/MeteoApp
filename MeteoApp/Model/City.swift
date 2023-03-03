//
//  City.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import Foundation

struct City{
    var name : String
    var weatherToday : Weather
    var weatherHours : [Weather]
    var weatherWeek : [Weather]
    var days = 7
}
