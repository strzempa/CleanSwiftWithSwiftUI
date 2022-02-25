//
//  DetailsSceneViewController.swift
//  CleanSwiftWithSwiftUI
//

import UIKit
import SwiftUI

protocol DetailsSceneViewControllerInput: AnyObject {
    var viewModel: DetailsSceneViewModel? { get set }
}

typealias DetailsSceneViewControllerOutput = DetailsSceneInteractorInput

final class DetailsSceneViewController: UIHostingController<DetailsSceneView> {
    var interactor: DetailsSceneViewControllerOutput?
    var router: DetailsSceneRoutingLogic?
    var viewModel: DetailsSceneViewModel?
}

extension DetailsSceneViewController: DetailsSceneViewControllerInput {}

extension DetailsSceneViewController: DetailsSceneViewDelegate {}
