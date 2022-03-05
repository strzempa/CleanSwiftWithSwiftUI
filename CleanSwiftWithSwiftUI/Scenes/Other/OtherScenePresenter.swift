//
//  OtherScenePresenter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol OtherScenePresenterInput {}

typealias OtherScenePresenterOutput
    = OtherSceneViewControllerInput

final class OtherScenePresenter {
    weak var viewController: OtherScenePresenterOutput?
}

// swiftlint:disable colon
extension OtherScenePresenter:
    OtherScenePresenterInput {}
