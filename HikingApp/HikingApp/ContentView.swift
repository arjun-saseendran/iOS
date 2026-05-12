//
//  ContentView.swift
//  HikingApp
//
//  Created by Arjun Saseendran on 12/05/26.
//

import SwiftUI

struct ContentView: View {
    let hikes = [Hike(name: "Maria", photo: "sal", miles: 5),
                 Hike(name: "Aswini", photo: "tom", miles: 3.5),
                 Hike(name: "Devika", photo: "tam", miles: 2)]

    
    var body: some View {
        VStack {
            List(hikes) { hike in
                HStack (alignment: .top){
                    Image(hike.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        .frame(width: 100)
                    VStack(alignment: .leading){
                        Text(hike.name)
                        Text("\(hike.miles.formatted()) miles")
                    }
                    
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
