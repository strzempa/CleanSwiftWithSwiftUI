//
//  WelcomeSceneConfigurator.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol WelcomeSceneConfigurator {
    func configured(
        with viewModel: WelcomeSceneViewModel
    ) -> WelcomeSceneViewController
}

final class DefaultWelcomeSceneConfigurator: WelcomeSceneConfigurator {
    func configured(
        with viewModel: WelcomeSceneViewModel
    ) -> WelcomeSceneViewController {
        var viewModel = viewModel
        let viewController = WelcomeSceneViewController(
            rootView: WelcomeSceneView(viewModel: viewModel)
        )
        let interactor = WelcomeSceneInteractor()
        let presenter = WelcomeScenePresenter()
        let router = WelcomeSceneRouter()
        router.source = viewController
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
        viewController.viewModel = viewModel
        viewModel.delegate = viewController
        return viewController
    }
}
