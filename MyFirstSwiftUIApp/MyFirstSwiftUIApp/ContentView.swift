//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Arjun Saseendran on 11/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: "https://thinkbluemarble.com/wp-content/uploads/2024/03/hummingbird.jpg")! ) {image in image.resizable().aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))} placeholder: {
                Text("Loading..")
            }
            
            Text("Humming Bird").foregroundStyle(.blue).font(.headline)
        }.padding()
        
    }
}

#Preview {
    ContentView()
}
