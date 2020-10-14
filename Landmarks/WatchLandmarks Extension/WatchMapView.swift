//
//  WatchMapView.swift
//  WatchLandmarks Extension
//
//  Created by vphom on 10/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct WatchMapView: WKInterfaceObjectRepresentable {
  
    var landmark: Landmark
    
    func makeWKInterfaceObject(
        context: WKInterfaceObjectRepresentableContext<WatchMapView>) -> WKInterfaceMap {WKInterfaceMap()}
    
    func updateWKInterfaceObject(_ map: WKInterfaceMap,
                                 context: WKInterfaceObjectRepresentableContext<WatchMapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        let region = MKCoordinateRegion(
            center: landmark.locationCoordinate, span: span)
        
        map.setRegion(region)
    }

}

struct WatchMapView_Previews: PreviewProvider {
    static var previews: some View {
        WatchMapView(landmark: UserData().landmarks[0])
    }
}
