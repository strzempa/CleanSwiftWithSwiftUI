//
//  OtherScenePresenterTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class OtherScenePresenterTests: XCTestCase {
    
    private var sut: OtherScenePresenter!
    private var viewController: OtherSceneViewControllerMock!
    private var router: OtherSceneRouterMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = OtherSceneViewControllerMock()
        router = OtherSceneRouterMock()
        viewController.router = router
        sut = OtherScenePresenter()
        sut.viewController = viewController
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        router = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
final class OtherSceneViewControllerMock:
    OtherSceneViewControllerInput {
    var viewModel: OtherSceneViewModel?
    var router: OtherSceneRoutingLogic?
}
