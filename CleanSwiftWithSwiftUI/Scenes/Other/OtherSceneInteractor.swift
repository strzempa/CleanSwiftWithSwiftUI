//
//  OtherSceneInteractor.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol OtherSceneInteractorInput {}

typealias OtherSceneInteractorOutput
    = OtherSceneInteractorInput

final class OtherSceneInteractor {
    var presenter: OtherScenePresenterInput?
}

// swiftlint:disable colon
extension OtherSceneInteractor:
    OtherSceneInteractorInput {}
