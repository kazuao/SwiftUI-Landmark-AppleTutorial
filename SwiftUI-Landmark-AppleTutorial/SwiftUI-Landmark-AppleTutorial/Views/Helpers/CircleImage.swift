//
//  CircleImage.swift
//  SwiftUI-Landmark-AppleTutorial
//
//  Created by kazunori.aoki on 2021/11/22.
//

import SwiftUI

struct CircleImage: View {

    var image: Image

    var body: some View {

        if #available(macOS 12.0, *) {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4.0)
                }
                .shadow(radius: 7.0)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
