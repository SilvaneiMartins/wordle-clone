//
//  ColorSchemaManager.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import SwiftUI

enum ColorScheme: Int {
    case unspecified, light, dark
}

class ColorSchemaManager: ObservableObject {
    @AppStorage("colorScheme") var colorScheme: ColorScheme = .unspecified {
        didSet {
            applyColorSchema()
        }
    }
    
    func applyColorSchema() {
        UIWindow.key?.overrideUserInterfaceStyle = UIUserInterfaceStyle(rawValue: colorScheme.rawValue)!
    }
}


