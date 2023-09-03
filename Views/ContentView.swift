//
//  ContentView.swift
//  Landmarks
//
//  Created by L XJ on 2023/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
