//
//  ContentView.swift
//  GlobalState
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI
import Observation

// Pre IOS 17
@Observable
class AppState {
    var isOn: Bool = false
}

struct ContentView: View {
    @Environment(AppState.self) private var appState
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .white : .gray)
    }
}

#Preview {
    ContentView()
        .environment(AppState())
}
