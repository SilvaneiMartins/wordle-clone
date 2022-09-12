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
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
