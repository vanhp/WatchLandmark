//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by vphom on 10/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        LandmarkList {WatchLandmarkDetailView(landmark: $0)}
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList {WatchLandmarkDetailView(landmark: $0)}
            .environmentObject(UserData())
        
    }
}
