//
//  Cities.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import Foundation

var cities : [City] = [
    City(name: "Milano",
         weatherToday: Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
         weatherHours: [
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
         ],
         weatherWeek: [
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
         ]),
    City(name: "Tokyo",
         weatherToday: Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
         weatherHours: [
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
         ],
         weatherWeek: [
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
        ]),
    City(name: "Mumbai",
         weatherToday: Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
         weatherHours: [
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
            Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
         ],
         weatherWeek: [
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)]),
             Weather(tempMax: 20, tempMin: 10, type: typeWeather[Int.random(in: 0...2)])
        ])
]


