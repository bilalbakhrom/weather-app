//
//  ANWeatherDetails.swift
//
//
//  Created by Bilal Bakhrom on 2024-02-01.
//

import Foundation

// MARK: - Weather Data
public struct ANWeatherDetails: Codable {
    public var id: Int?
    public var coord: ANCoord?
    public var weather: [ANWeather]?
    public var base: String?
    public var main: ANMain?
    public var visibility: Int?
    public var wind: ANWind?
    public var rain: ANRain?
    public var clouds: ANClouds?
    public var dt: Int?
    public var sys: ANSys?
    public var timezone: Int?
    public var name: String?
    public var cod: Int?
}

// MARK: - Wind
public struct ANWind: Codable {
    public var speed: Double?
    public var deg: Double?
    public var gust: Double?
}

// MARK: - Rain
public struct ANRain: Codable {
    public var h1: Double?

    enum CodingKeys: String, CodingKey {
        case h1 = "1h"
    }
}

// MARK: - Clouds
public struct ANClouds: Codable {
    public var all: Int?
}

// MARK: - Sys
public struct ANSys: Codable {
    public var type, id: Int?
    public var country: String?
    public var sunrise, sunset: Int?
}
