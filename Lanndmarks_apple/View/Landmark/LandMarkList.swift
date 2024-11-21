//
//  LandMarkList.swift
//  Lanndmarks_apple
//
//  Created by SHUBHAM on 19/11/24.
//

import SwiftUI

struct LandMarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredMarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            return (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredMarks) { landmark in
                    NavigationLink {
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .animation(.easeInOut, value: filteredMarks)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a Landmakr")
        }
    }
}

#Preview {
    LandMarkList().environment(ModelData())
}
