//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList(landmarks: JSONLoader.load("landmarkData.json") ?? .init())
        }
    }
}
