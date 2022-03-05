//
//  ScenesFactory.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol ScenesFactory {
    func makeWelcomeScene() -> UIViewController
    func makeDetailsScene(
        viewModel: DetailsSceneViewModel
    ) -> UIViewController
    func makeOtherScene() -> UIViewController
}

final class DefaultScenesFactory: ScenesFactory {
    func makeWelcomeScene() -> UIViewController {
        let viewModel = DefaultWelcomeSceneViewModel(
            text: "Hello World",
            buttonText: "Tap me"
        )
        return DefaultWelcomeSceneConfigurator()
            .configured(with: viewModel)
    }
    
    func makeDetailsScene(
        viewModel: DetailsSceneViewModel
    ) -> UIViewController {
        DefaultDetailsSceneConfigurator().configured(with: viewModel)
    }
    
    func makeOtherScene() -> UIViewController {
        DefaultOtherSceneConfigurator()
            .configured(with: DefaultOtherSceneViewModel())
    }
}
