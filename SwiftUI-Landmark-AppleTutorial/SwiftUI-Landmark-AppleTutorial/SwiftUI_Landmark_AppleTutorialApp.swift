//
//  SwiftUI_Landmark_AppleTutorialApp.swift
//  SwiftUI-Landmark-AppleTutorial
//
//  Created by kazunori.aoki on 2021/11/22.
//

import SwiftUI

@main
struct SwiftUI_Landmark_AppleTutorialApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands { LandmarkCommands() }
        #endif

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif

        #if os(macOS)
        Settings { LandmarkSettings() }
        #endif
    }
}
