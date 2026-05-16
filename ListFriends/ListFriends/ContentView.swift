//
//  ContentView.swift
//  ListFriends
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var friends:[String] = []
    
    var body: some View {
        VStack {
            TextField("What is your name?", text:$name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            List(friends, id: \.self){ friend in
                Text(friend)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
