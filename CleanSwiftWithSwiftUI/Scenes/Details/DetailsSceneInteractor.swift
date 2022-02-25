//
//  DetailsSceneInteractor.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol DetailsSceneInteractorInput {}

typealias DetailsSceneInteractorOutput = DetailsSceneInteractorInput

final class DetailsSceneInteractor {
    var presenter: DetailsScenePresenterInput?
}

extension DetailsSceneInteractor: DetailsSceneInteractorInput {}
