//
//  DetailsScenePresenter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol DetailsScenePresenterInput {}

typealias DetailsScenePresenterOutput = DetailsSceneViewControllerInput

final class DetailsScenePresenter {
    weak var viewController: DetailsScenePresenterOutput?
}

extension DetailsScenePresenter: DetailsScenePresenterInput {}
