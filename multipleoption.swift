//
//  multipleoption.swift
//  Wk7
//
//  Created by Joann Myung on 3/21/23.
//

import SwiftUI

struct multipleoption: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text("click me")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change background", isPresented:
                $showingConfirmation) {
                Button("Red") { backgroundColor = .red }
                Button("Green") { backgroundColor = .green }
                Button("Blue") { backgroundColor = .blue }
                Button("Cancel", role: .cancel) { }
                    
                } message: {
                    Text("Select a new color")
                }
    }
}

struct multipleoption_Previews: PreviewProvider {
    static var previews: some View {
        multipleoption()
    }
}
