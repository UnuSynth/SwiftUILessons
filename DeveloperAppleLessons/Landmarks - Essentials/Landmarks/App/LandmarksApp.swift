//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(modelData)
        }
    }
}
