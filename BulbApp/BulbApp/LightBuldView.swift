//
//  LightBuldView.swift
//  BulbApp
//
//  Created by Arjun Saseendran on 16/05/26.
//
import SwiftUI

struct LightBuldView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
            Button(isOn ? "On" : "Off"){
                isOn.toggle()
            }
            
        }
        
    }
}

#Preview {
//    LightBuldView(isOn: .constant(true))
    LightBuldView(isOn: .constant(false))
}
