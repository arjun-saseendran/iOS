//
//  MVPatternApp.swift
//  MVPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import SwiftUI

@main
struct MVPatternApp: App {
    @StateObject private var storeModel = StoreModel(webService: WebService())
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
