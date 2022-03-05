//
//  WelcomeSceneConfiguratorTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

// swiftlint:disable force_cast
final class WelcomeSceneConfiguratorTests: XCTestCase {
    
    private var sut: WelcomeSceneConfigurator!
    private var viewModel: WelcomeSceneViewModelMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewModel = WelcomeSceneViewModelMock()
        sut = DefaultWelcomeSceneConfigurator()
    }
    
    override func tearDown() {
        sut = nil
        viewModel = nil
        
        super.tearDown()
    }
    
    func test_configurator_configure_allDependenciesProperlyConfigured() {
        let configured = sut.configured(with: viewModel)
        
        XCTAssertTrue(configured.router is WelcomeSceneRouter)
        XCTAssertTrue(
            (configured.router as! WelcomeSceneRouter)
                .source is WelcomeSceneViewController
        )
        XCTAssertTrue(
            configured.interactor is WelcomeSceneInteractor
        )
        XCTAssertTrue(
            (configured.interactor as! WelcomeSceneInteractor)
                .presenter is WelcomeScenePresenter
        )
        XCTAssertTrue(
            configured.interactor is WelcomeSceneInteractor
        )
        XCTAssertNotNil(configured.viewModel)
        XCTAssertTrue(
            viewModel.delegate is WelcomeSceneViewController
        )
    }
}
