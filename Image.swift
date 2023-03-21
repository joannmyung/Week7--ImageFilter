//
//  Image.swift
//  Wk7
//
//  Created by Joann Myung on 3/21/23.
//

import SwiftUI

struct Image: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
        }
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        Image()
    }
}
