import SwiftUI

struct ContentView: View {
    let hikes = [Hike(name: "Bridgen", photo: "sal", miles: 5),
                 Hike(name: "Hosten", photo: "tom", miles: 3.5),
                 Hike(name: "Wonder", photo: "tam", miles: 2)]

    
    var body: some View {
        NavigationStack {
            
            List(hikes) { hike in
                NavigationLink(value: hike){
                    HikeCellView(hike: hike)
                }
                
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self){
                hike in HikeDetailScreen(hike: hike)
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}


