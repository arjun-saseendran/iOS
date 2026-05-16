//
//  ContentView.swift
//  Search
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var search: String = ""
    @State private var friends: [String] = ["Maria", "Devika", "Aswini", "Manjima", "Sreekutty"]
    @State private var filteredFriends: [String] = []
    
    var body: some View {
       VStack {
            List(filteredFriends, id: \.self){ friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always))
            .onChange(of: search){
                if search.isEmpty {
                    filteredFriends = friends
                }else{
                    filteredFriends = friends.filter {$0.contains(search)}
                }
               
            }
            
           Spacer()
        }
        
        .padding()
        .onAppear(perform:{filteredFriends = friends})
        .navigationTitle("Friends")
        
        
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
    
}
