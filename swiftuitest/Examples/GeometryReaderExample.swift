//
//  GeometryReaderExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 19.11.2021.
//

import SwiftUI

struct GeometryReaderExample: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Text("Left")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: geometry.size.width * 0.33)
                        .background(Color.yellow)
                    Text("Right")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: geometry.size.width * 0.67)
                        .background(Color.orange)
                }
            }
            .frame(height: 50)
        }
    }
}

struct GeometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExample()
    }
}
