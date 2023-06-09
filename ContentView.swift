//
//  ContentView.swift
//  Wk7
//
//  Created by Joann Myung on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        VStack {
            Text("play with bar below")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)

            Button("Random Blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
            .onChange(of: blurAmount) { newValue in
                print("New value is \(newValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
