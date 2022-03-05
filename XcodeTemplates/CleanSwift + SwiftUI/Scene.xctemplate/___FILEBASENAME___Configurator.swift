//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation

protocol ___VARIABLE_sceneName___SceneConfigurator {
    func configured(
        with viewModel: ___VARIABLE_sceneName___SceneViewModel
    ) -> ___VARIABLE_sceneName___SceneViewController
}

// swiftlint:disable colon
final class Default___VARIABLE_sceneName___SceneConfigurator:
    ___VARIABLE_sceneName___SceneConfigurator {
    func configured(
        with viewModel: ___VARIABLE_sceneName___SceneViewModel
    ) -> ___VARIABLE_sceneName___SceneViewController {
        var viewModel = viewModel
        let viewController = ___VARIABLE_sceneName___SceneViewController(
            rootView: ___VARIABLE_sceneName___SceneView(viewModel: viewModel)
        )
        let interactor = ___VARIABLE_sceneName___SceneInteractor()
        let presenter = ___VARIABLE_sceneName___ScenePresenter()
        let router = ___VARIABLE_sceneName___SceneRouter()
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
