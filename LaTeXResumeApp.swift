//
//  LaTeXResumeApp.swift
//  LaTeXResume
//
//  Created by GhostinBits on 2022-05-17.
//

import SwiftUI

@main
struct LaTeXResumeApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
