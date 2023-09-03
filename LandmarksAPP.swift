//
//  LandmarksAPP.swift
//  Landmarks
//
//  Created by L XJ on 2023/9/3.
//

import SwiftUI
@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

