//
//  MapView.swift
//  Lanndmarks_apple
//
//  Created by SHUBHAM on 19/11/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
            MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    
    var body: some View {

        Map(position: .constant(.region(region)))
            .frame(height: 300)
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
