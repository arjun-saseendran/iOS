//
//  LightBulbView.swift
//  GlobalState
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI

struct LightBulbView: View {
    @Environment(AppState.self) private var appState
    
    var body: some View{
        @Bindable var appState = appState
        VStack{
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb" )
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow : .black)
//            Button(appState.isOn ? "On" : "Off"){
//                appState.isOn.toggle()
//            }
            Toggle("ON", isOn: $appState.isOn)
                .fixedSize()
                .frame(maxWidth: .infinity)
                
            }
        }
        
    }

#Preview {
    LightBulbView()
        .environment(AppState())
}


