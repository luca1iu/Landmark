//
//  Landmark.swift
//  Landmarks
//
//  Created by L XJ on 2023/4/7.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }


    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}



