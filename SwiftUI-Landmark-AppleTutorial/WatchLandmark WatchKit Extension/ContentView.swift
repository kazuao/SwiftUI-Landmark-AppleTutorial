//
//  ContentView.swift
//  WatchLandmark WatchKit Extension
//
//  Created by kazunori.aoki on 2021/11/24.
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
