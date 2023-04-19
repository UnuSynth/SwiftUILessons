//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import SwiftUI

struct LandmarkList: View {
    private var landmarks: [Landmark]
    
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    }
    
    init(landmarks: [Landmark]) {
        self.landmarks = landmarks
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 14", "iPad Pro (12.9-inch) (6th generation)"], id: \.self) { deviceName in
            LandmarkList(landmarks: JSONLoader.load("landmarkData.json") ?? .init())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
