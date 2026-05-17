//
//  ContentView.swift
//  GlobalStatePreIOS17
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI
internal import Combine

// Pre IOS 17
class AppState: ObservableObject {
    @Published var isOn: Bool = false
}

struct ContentView: View {
    @EnvironmentObject private var appState: AppState
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? Color.red : Color.green)
    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
