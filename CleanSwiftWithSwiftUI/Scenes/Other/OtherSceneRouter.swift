//
//  OtherSceneRouter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol OtherSceneRoutingLogic {}

final class OtherSceneRouter: NSObject {
    weak var source: UIViewController?
}

// swiftlint:disable colon
extension OtherSceneRouter:
    OtherSceneRoutingLogic {}
