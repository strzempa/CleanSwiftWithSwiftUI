//
//  OtherSceneConfiguratorTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

// swiftlint:disable force_cast
final class OtherSceneConfiguratorTests: XCTestCase {
    
    private var sut: OtherSceneConfigurator!
    private var viewModel: OtherSceneViewModelMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewModel = OtherSceneViewModelMock()
        sut = DefaultOtherSceneConfigurator()
    }
    
    override func tearDown() {
        sut = nil
        viewModel = nil
        
        super.tearDown()
    }
    
    func test_configurator_configure_allDependenciesProperlyConfigured() {
        let configured = sut.configured(with: viewModel)
        
        XCTAssertTrue(configured.router is OtherSceneRouter)
        XCTAssertTrue(
            (configured.router as! OtherSceneRouter)
                .source is OtherSceneViewController
        )
        XCTAssertTrue(
            configured.interactor is OtherSceneInteractor
        )
        XCTAssertTrue(
            (configured.interactor as! OtherSceneInteractor)
                .presenter is OtherScenePresenter
        )
        XCTAssertTrue(
            configured.interactor is OtherSceneInteractor
        )
        XCTAssertNotNil(configured.viewModel)
        XCTAssertTrue(
            viewModel.delegate is OtherSceneViewController
        )
    }
}
