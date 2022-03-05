//
//  WelcomeScenePresenterTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class WelcomeScenePresenterTests: XCTestCase {
    
    private var sut: WelcomeScenePresenter!
    private var viewController: WelcomeSceneViewControllerMock!
    private var router: WelcomeSceneRouterMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = WelcomeSceneViewControllerMock()
        router = WelcomeSceneRouterMock()
        viewController.router = router
        sut = WelcomeScenePresenter()
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
final class WelcomeSceneViewControllerMock:
    WelcomeSceneViewControllerInput {
    var viewModel: WelcomeSceneViewModel?
    var router: WelcomeSceneRoutingLogic?
}
