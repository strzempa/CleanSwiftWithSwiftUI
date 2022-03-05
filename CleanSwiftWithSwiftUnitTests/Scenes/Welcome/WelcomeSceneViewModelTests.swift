//
//  WelcomeSceneViewModelTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

// swiftlint:disable force_cast
final class WelcomeSceneViewModelTests: XCTestCase {
    
    private var sut: WelcomeSceneViewModel!
    private var viewController: UIViewControllerMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = UIViewControllerMock()
        sut = DefaultWelcomeSceneViewModel(text: "", buttonText: "")
        sut.delegate = viewController
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
private final class UIViewControllerMock:
    UIViewController, WelcomeSceneViewDelegate {
    
    var didSelectButtonCalled = false
    func didSelectButton(_ sender: WelcomeSceneViewModel?) {
        didSelectButtonCalled = true
    }
}
