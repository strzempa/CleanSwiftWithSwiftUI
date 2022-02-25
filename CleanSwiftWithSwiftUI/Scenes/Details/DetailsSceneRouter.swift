//
//  DetailsSceneRouter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol DetailsSceneRoutingLogic {}

final class DetailsSceneRouter: NSObject {
    weak var source: UIViewController?
}

extension DetailsSceneRouter: DetailsSceneRoutingLogic {}
