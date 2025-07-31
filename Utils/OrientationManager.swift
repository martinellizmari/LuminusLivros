//
//  OrientationManager.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import UIKit

struct OrientationManager {
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
        AppDelegate.orientationLock = orientation

        // Força o aparelho a girar
        if orientation == .portrait {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
        } else if orientation == .landscape {
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
        }

        UINavigationController.attemptRotationToDeviceOrientation()
    }
}
