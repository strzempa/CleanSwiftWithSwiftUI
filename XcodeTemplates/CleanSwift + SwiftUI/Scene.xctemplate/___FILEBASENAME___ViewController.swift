//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import UIKit
import SwiftUI

protocol ___VARIABLE_sceneName___SceneViewControllerInput: AnyObject {
    var router: ___VARIABLE_sceneName___SceneRoutingLogic? { get set }
    var viewModel: ___VARIABLE_sceneName___SceneViewModel? { get set }
}

typealias ___VARIABLE_sceneName___SceneViewControllerOutput
    = ___VARIABLE_sceneName___SceneInteractorInput

// swiftlint:disable colon
final class ___VARIABLE_sceneName___SceneViewController: 
    UIHostingController<___VARIABLE_sceneName___SceneView> {
    var interactor: ___VARIABLE_sceneName___SceneViewControllerOutput?
    var router: ___VARIABLE_sceneName___SceneRoutingLogic?
    var viewModel: ___VARIABLE_sceneName___SceneViewModel?
}

// swiftlint:disable colon
extension ___VARIABLE_sceneName___SceneViewController:
    ___VARIABLE_sceneName___SceneViewControllerInput {}

// swiftlint:disable colon
extension ___VARIABLE_sceneName___SceneViewController:
    ___VARIABLE_sceneName___SceneViewDelegate {}
