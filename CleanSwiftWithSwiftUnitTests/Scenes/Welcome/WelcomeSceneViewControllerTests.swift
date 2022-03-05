//
//  WelcomeSceneViewControllerTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class WelcomeSceneViewControllerTests: XCTestCase {
    
    private var sut: WelcomeSceneViewController!
    private var interactor: WelcomeSceneInteractorMock!
    private var router: WelcomeSceneRouterMock!
    private var viewModel: WelcomeSceneViewModelMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        interactor = WelcomeSceneInteractorMock()
        router = WelcomeSceneRouterMock()
        viewModel = WelcomeSceneViewModelMock()
        sut = WelcomeSceneViewController(
            rootView: WelcomeSceneView(viewModel: viewModel)
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
final class WelcomeSceneInteractorMock:
    WelcomeSceneInteractorInput {
    
    var detailsCalled = true
    func details() {
        detailsCalled = false
    }
}

// swiftlint:disable colon
final class WelcomeSceneRouterMock:
    WelcomeSceneRoutingLogic {
    
    var showDetailsCalled = false
    func showDetails(viewModel: DetailsSceneViewModel) {
        showDetailsCalled = true
    }
}

final class WelcomeSceneViewModelMock: WelcomeSceneViewModel {
    var text: String = ""
    var buttonText: String = ""
    
    var delegate: WelcomeSceneViewDelegate?
}
