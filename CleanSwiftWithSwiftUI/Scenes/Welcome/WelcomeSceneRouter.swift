//
//  WelcomeSceneRouter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol WelcomeSceneRoutingLogic {
    func showDetails(viewModel: DetailsSceneViewModel)
}

final class WelcomeSceneRouter: NSObject {
    weak var source: UIViewController?
    
    private let scenesFactory: ScenesFactory
    
    init(scenesFactory: ScenesFactory = DefaultScenesFactory()) {
        self.scenesFactory = scenesFactory
    }
}

extension WelcomeSceneRouter: WelcomeSceneRoutingLogic {
    func showDetails(viewModel: DetailsSceneViewModel) {
        source?.navigationController?.pushViewController(
            scenesFactory.makeDetailsScene(viewModel: viewModel),
            animated: true
        )
    }
}
