//
//  ListExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 18.11.2021.
//

import SwiftUI


struct ListExample: View {
    @State var colors = ColorNames.all
    @State var selection: Set<String> = []
    
    var body: some View {
        NavigationView {
            List(selection: $selection){
                ForEach(colors, id: \.self) { color in
                    RowView(color: color)
                }
                Button("Reverse List", action: reverseList)
                Button("Shuffle List", action: shuffleList)
                NavigationLink("push", destination: GeometryReaderExample())
            }
            .navigationTitle("Colors")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func reverseList(){
        colors.reverse()
    }
    
    func shuffleList(){
        colors.shuffle()
    }
    
}

struct RowView: View {
    var color: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "square.and.arrow.up")
                .border(Color.red, width: 1)
            Text("\(color)").onAppear {
                print(color)
            }
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}
