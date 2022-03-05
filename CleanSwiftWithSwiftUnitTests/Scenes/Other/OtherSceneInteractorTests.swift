//
//  OtherSceneInteractorTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

final class OtherSceneInteractorTests: XCTestCase {
    
    private var sut: OtherSceneInteractor!
    private var presenter: OtherScenePresenterMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        presenter = OtherScenePresenterMock()
        sut = OtherSceneInteractor()
        sut.presenter = presenter
    }
    
    override func tearDown() {
        sut = nil
        presenter = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
final class OtherScenePresenterMock:
    OtherScenePresenterInput {}
