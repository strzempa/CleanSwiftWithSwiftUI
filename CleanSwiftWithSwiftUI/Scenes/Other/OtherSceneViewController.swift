//
//  OtherSceneViewController.swift
//  CleanSwiftWithSwiftUI
//

import UIKit
import SwiftUI

protocol OtherSceneViewControllerInput: AnyObject {
    var router: OtherSceneRoutingLogic? { get set }
    var viewModel: OtherSceneViewModel? { get set }
}

typealias OtherSceneViewControllerOutput
    = OtherSceneInteractorInput

// swiftlint:disable colon
final class OtherSceneViewController: 
    UIHostingController<OtherSceneView> {
    var interactor: OtherSceneViewControllerOutput?
    var router: OtherSceneRoutingLogic?
    var viewModel: OtherSceneViewModel?
}

// swiftlint:disable colon
extension OtherSceneViewController:
    OtherSceneViewControllerInput {}

// swiftlint:disable colon
extension OtherSceneViewController:
    OtherSceneViewDelegate {}
