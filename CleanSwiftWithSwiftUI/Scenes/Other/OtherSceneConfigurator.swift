//
//  OtherSceneConfigurator.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol OtherSceneConfigurator {
    func configured(
        with viewModel: OtherSceneViewModel
    ) -> OtherSceneViewController
}

// swiftlint:disable colon
final class DefaultOtherSceneConfigurator:
    OtherSceneConfigurator {
    func configured(
        with viewModel: OtherSceneViewModel
    ) -> OtherSceneViewController {
        var viewModel = viewModel
        let viewController = OtherSceneViewController(
            rootView: OtherSceneView(viewModel: viewModel)
        )
        let interactor = OtherSceneInteractor()
        let presenter = OtherScenePresenter()
        let router = OtherSceneRouter()
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
