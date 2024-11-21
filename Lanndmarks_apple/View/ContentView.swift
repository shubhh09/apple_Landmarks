//
//  ContentView.swift
//  Lanndmarks_apple
//
//  Created by SHUBHAM on 19/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
