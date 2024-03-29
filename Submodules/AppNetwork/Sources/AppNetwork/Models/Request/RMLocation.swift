//
//  RMLocation.swift
//
//
//  Created by Bilal Bakhrom on 2024-02-01.
//

import Foundation

public struct RMLocation: Codable {
    public let lat: Double
    public let lon: Double
    public let appID: String
    public let units: RMUnits
    
    public init(lat: Double, lon: Double, units: RMUnits = .metric, appID: String? = nil) {
        self.lat = lat
        self.lon = lon
        self.units = units
        self.appID = appID ?? NetworkSettings.shared.appID
    }
}

// MARK: - CODING KEYS

extension RMLocation {
    enum CodingKeys: String, CodingKey {
        case lat
        case lon
        case appID = "appid"
        case units
    }
}
