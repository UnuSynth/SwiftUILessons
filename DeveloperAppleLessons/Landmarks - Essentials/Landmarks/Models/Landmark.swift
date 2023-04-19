//
//  Landmark.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Coordinates: Codable, Hashable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    init(id: Int = 0, name: String = "test", park: String = "test", state: String = "test", description: String = "testest", imageName: String = "turtlerock", coordinates: Coordinates = .init(latitude: 0, longitude: 0)) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
    }
}
