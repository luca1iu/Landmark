//
//  LandmarkList.swift
//  Landmarks
//
//  Created by L XJ on 2023/9/3.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                
                ForEach(filteredLandmarks) { lanmark in
                    NavigationLink {
                        LandmarkDetail(landmark: lanmark)
                    } label: {
                        LandmarkRow(landmark: lanmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}


struct LandmarkList_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
