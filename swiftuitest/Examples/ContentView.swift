//
//  ContentView.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 8.11.2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var showDescription = true
    @State var text = "merhaba"

    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.white
            VStack {
                Text("hello world!")
                    .font(Font.system(size: 30))
                    .foregroundColor(Color.init(UIColor.darkText))
                    .italic()
                    .bold()
                if showDescription {
                    Text("Lorem ipsum")
                } else {
                    Text("hatayla karş.")
                }
                TextView(text: $text)
                    .frame(height: 50)
                    .background(Color.init(UIColor.gray.withAlphaComponent(0.5)))
                Text(text)
                Button.init("Toggle") {
                    showDescription = !showDescription
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


