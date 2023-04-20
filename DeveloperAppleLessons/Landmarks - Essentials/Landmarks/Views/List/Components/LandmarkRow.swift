//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[2])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
