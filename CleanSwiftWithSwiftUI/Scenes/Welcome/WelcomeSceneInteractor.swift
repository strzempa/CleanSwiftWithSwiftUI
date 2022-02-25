//
//  WelcomeSceneInteractor.swift
//  CleanSwiftWithSwiftUI
//

import Foundation

protocol WelcomeSceneInteractorInput {
    func details()
}

typealias WelcomeSceneInteractorOutput = WelcomeSceneInteractorInput

final class WelcomeSceneInteractor {
    var presenter: WelcomeScenePresenterInput?
}

extension WelcomeSceneInteractor: WelcomeSceneInteractorInput {
    func details() {
        #warning("TODO business logic here")
        presenter?.showDetails()
    }
}
