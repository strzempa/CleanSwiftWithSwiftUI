//
//  WelcomeSceneInteractorTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class WelcomeSceneInteractorTests: XCTestCase {
    
    private var sut: WelcomeSceneInteractor!
    private var presenter: WelcomeScenePresenterMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        presenter = WelcomeScenePresenterMock()
        sut = WelcomeSceneInteractor()
        sut.presenter = presenter
    }
    
    override func tearDown() {
        sut = nil
        presenter = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
final class WelcomeScenePresenterMock:
    WelcomeScenePresenterInput {
    
    var showDetailsCalled = true
    func showDetails() {
        showDetailsCalled = false
    }
}
