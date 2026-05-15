import SwiftUI

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
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

#Preview {
    HikeCellView(hike: Hike(name: "Wonder", photo: "sal", miles: 5))
}
