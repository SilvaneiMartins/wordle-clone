//
//  UIWindow+Extension.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import UIKit

extension UIWindow {
    static var key: UIWindow? {
        guard let scene = UIApplication.shared.connectedScenes.first,
              let windoSceneDelegate = scene.delegate as? UIWindowSceneDelegate,
              let window = windoSceneDelegate.window else {
            return nil
        }
        
        return window
    }
}
