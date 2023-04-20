//
//  TurtleRockImageView.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import SwiftUI

struct TurtleRockImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct TurtleRockImageView_Previews: PreviewProvider {
    static var previews: some View {
        TurtleRockImageView(image: Image("turtlerock"))
    }
}
