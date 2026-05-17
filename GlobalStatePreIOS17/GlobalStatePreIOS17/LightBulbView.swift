//
//  LightBulbView.swift
//  GlobalStatePreIOS17
//
//  Created by Arjun Saseendran on 16/05/26.
import SwiftUI

struct LightBulbView: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        VStack{
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow : .gray)
            Button(appState.isOn ? "ON" : "OFF"){
                appState.isOn.toggle()
            }
            
        }
        
    }
}

