//
//  TextViewExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 19.11.2021.
//

import SwiftUI

struct TextViewExample: View {
    @State var text = "hello"

    var body: some View {
        VStack {
            TextView(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.init(UIColor.lightGray.withAlphaComponent(0.4)))
            Text(text)
                .border(Color.red, width: 1)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}


struct TextViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TextViewExample()
    }
}
