//
//  WelcomeSceneViewController.swift
//  CleanSwiftWithSwiftUI
//

import UIKit
import SwiftUI

protocol WelcomeSceneViewControllerInput: AnyObject {
    var router: WelcomeSceneRoutingLogic? { get set }
    var viewModel: WelcomeSceneViewModel? { get set }
}

typealias WelcomeSceneViewControllerOutput = WelcomeSceneInteractorInput

final class WelcomeSceneViewController: UIHostingController<WelcomeSceneView> {
    var interactor: WelcomeSceneViewControllerOutput?
    var router: WelcomeSceneRoutingLogic?
    var viewModel: WelcomeSceneViewModel?
}

extension WelcomeSceneViewController: WelcomeSceneViewControllerInput {}

extension WelcomeSceneViewController: WelcomeSceneViewDelegate {
    func didSelectButton(_ sender: WelcomeSceneViewModel?) {
        interactor?.details()
    }
}
