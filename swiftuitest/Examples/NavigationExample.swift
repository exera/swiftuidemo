//
//  NavigationExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 17.11.2021.
//

import Foundation
import SwiftUI

struct NavigationExample: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SwiftUI"), footer: Text("A lot to learn")) {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
            }
    //        ZStack(alignment: .topLeading) {
    //            Color.red
    //            Text("hello there")
    //        }
            .navigationBarTitle(Text("List example"), displayMode: .inline)
        }
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        let view = NavigationExample()
        return view
//        return Group {
//            view
//            //view.colorScheme(.dark)
//        }
    }
}
