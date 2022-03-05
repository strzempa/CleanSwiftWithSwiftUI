//
//  WelcomeSceneRouterTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class WelcomeSceneRouterTests: XCTestCase {
    
    private var sut: WelcomeSceneRouter!
    private var viewController: UIViewControllerMock!
    private var navigationController: UINavigationControllerMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = UIViewControllerMock()
        navigationController
            = UINavigationControllerMock(rootViewController: UIViewController())
        navigationController.pushViewController(viewController, animated: false)
        sut = WelcomeSceneRouter()
        sut.source = viewController
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        navigationController = nil
        
        super.tearDown()
    }
}

private final class UIViewControllerMock: UIViewController {}

private final class UINavigationControllerMock: UINavigationController {}
