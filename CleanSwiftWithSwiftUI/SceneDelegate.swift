//
//  SceneDelegate.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    private lazy var scenesFactory: ScenesFactory = DefaultScenesFactory()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else {
            assertionFailure()
            return
        }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = UINavigationController(
            rootViewController: scenesFactory.makeWelcomeScene()
        )
        window?.makeKeyAndVisible()
    }
}
