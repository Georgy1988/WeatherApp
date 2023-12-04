//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Georgi on 30.11.2023.
//

import Foundation
import UIKit

struct currentWeather {
    let temperature: Double
    let appearentTemparature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension currentWeather {
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    var temperatureString: String {
        return "\(Int(temperature)) ˚C"
    }
    var appearenttempatureString: String {
        return "\(Int(appearentTemparature)) ˚C"
    }
}

