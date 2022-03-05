//
//  OtherSceneViewModelTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

// swiftlint:disable force_cast
final class OtherSceneViewModelTests: XCTestCase {
    
    private var sut: OtherSceneViewModel!
    private var viewController: UIViewControllerMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = UIViewControllerMock()
        sut = DefaultOtherSceneViewModel()
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
    UIViewController, OtherSceneViewDelegate {}
