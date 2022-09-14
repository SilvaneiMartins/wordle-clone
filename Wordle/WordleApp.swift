//
//  WordleApp.swift
//  Wordle
//
//  Created by Silvanei  Martins on 11/09/22.
//

import SwiftUI

@main
struct WordleApp: App {
    @StateObject var dm = WordleDataModel()
    @StateObject var csManager = ColorSchemaManager()
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
                .environmentObject(csManager)
                .onAppear {
                    csManager.applyColorSchema()
                }
        }
    }
}
