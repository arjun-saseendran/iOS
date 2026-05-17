//
//  GlobalStatePreIOS17App.swift
//  GlobalStatePreIOS17
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI

@main
struct GlobalStatePreIOS17App: App {
    init() {
        _appState = StateObject(wrappedValue: AppState())
    }
    
    
    @StateObject private var appState: AppState
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}

