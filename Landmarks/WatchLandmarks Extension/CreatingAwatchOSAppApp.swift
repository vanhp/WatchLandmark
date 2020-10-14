//
//  CreatingAwatchOSAppApp.swift
//  WatchLandmarks Extension
//
//  Created by vphom on 10/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

@main
struct CreatingAwatchOSAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
