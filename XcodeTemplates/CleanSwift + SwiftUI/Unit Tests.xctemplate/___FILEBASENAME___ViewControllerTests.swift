//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

final class ___VARIABLE_sceneName___SceneViewControllerTests: XCTestCase {
    
    private var sut: ___VARIABLE_sceneName___SceneViewController!
    private var interactor: ___VARIABLE_sceneName___SceneInteractorMock!
    private var router: ___VARIABLE_sceneName___SceneRouterMock!
    private var viewModel: ___VARIABLE_sceneName___SceneViewModelMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        interactor = ___VARIABLE_sceneName___SceneInteractorMock()
        router = ___VARIABLE_sceneName___SceneRouterMock()
        viewModel = ___VARIABLE_sceneName___SceneViewModelMock()
        sut = ___VARIABLE_sceneName___SceneViewController(
            rootView: ___VARIABLE_sceneName___SceneView(viewModel: viewModel)
        )
        sut.interactor = interactor
        sut.router = router
    }
    
    override func tearDown() {
        sut = nil
        interactor = nil
        router = nil
        viewModel = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___SceneInteractorMock:
    ___VARIABLE_sceneName___SceneInteractorInput {}

// swiftlint:disable colon
final class ___VARIABLE_sceneName___SceneRouterMock:
    ___VARIABLE_sceneName___SceneRoutingLogic {}

final class ___VARIABLE_sceneName___SceneViewModelMock: ___VARIABLE_sceneName___SceneViewModel {
    var delegate: ___VARIABLE_sceneName___SceneViewDelegate?
}