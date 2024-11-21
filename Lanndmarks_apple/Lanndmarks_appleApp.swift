//
//  Lanndmarks_appleApp.swift
//  Lanndmarks_apple
//
//  Created by SHUBHAM on 19/11/24.
//

import SwiftUI

@main
struct Lanndmarks_appleApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
