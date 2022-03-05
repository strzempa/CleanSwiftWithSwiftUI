//
//  OtherSceneViewControllerTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class OtherSceneViewControllerTests: XCTestCase {
    
    private var sut: OtherSceneViewController!
    private var interactor: OtherSceneInteractorMock!
    private var router: OtherSceneRouterMock!
    private var viewModel: OtherSceneViewModelMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        interactor = OtherSceneInteractorMock()
        router = OtherSceneRouterMock()
        viewModel = OtherSceneViewModelMock()
        sut = OtherSceneViewController(
            rootView: OtherSceneView(viewModel: viewModel)
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
final class OtherSceneInteractorMock:
    OtherSceneInteractorInput {}

// swiftlint:disable colon
final class OtherSceneRouterMock:
    OtherSceneRoutingLogic {}

final class OtherSceneViewModelMock: OtherSceneViewModel {
    var delegate: OtherSceneViewDelegate?
}