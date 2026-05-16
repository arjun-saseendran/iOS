//
//  GlobalStateApp.swift
//  GlobalState
//
//  Created by Arjun Saseendran on 16/05/26.
//

import SwiftUI

@main
struct GlobalStateApp: App {
    @State private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}
