//
//  LivrosLuminusApp.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

@main
struct LivrosLuminusApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .statusBarHidden(true)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.landscape

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .landscape
    }
}
