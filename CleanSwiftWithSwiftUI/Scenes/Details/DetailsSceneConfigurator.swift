//
//  DetailsSceneConfigurator.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol DetailsSceneConfigurator {
    func configured(
        with viewModel: DetailsSceneViewModel
    ) -> DetailsSceneViewController
}

final class DefaultDetailsSceneConfigurator: DetailsSceneConfigurator {
    func configured(
        with viewModel: DetailsSceneViewModel
    ) -> DetailsSceneViewController {
        var viewModel = viewModel
        let viewController = DetailsSceneViewController(
            rootView: DetailsSceneView(viewModel: viewModel)
        )
        let interactor = DetailsSceneInteractor()
        let presenter = DetailsScenePresenter()
        let router = DetailsSceneRouter()
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
