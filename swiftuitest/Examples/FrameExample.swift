//
//  FrameExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 18.11.2021.
//

import SwiftUI

struct FrameExample: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack {
                Color.red
                    //.frame(maxWidth: .infinity)
                Text("hello")
            }
            .frame(height: 50)
        }
        
        /*.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )*/
    }
}

struct FrameExample_Previews: PreviewProvider {
    static var previews: some View {
        FrameExample()
    }
}
