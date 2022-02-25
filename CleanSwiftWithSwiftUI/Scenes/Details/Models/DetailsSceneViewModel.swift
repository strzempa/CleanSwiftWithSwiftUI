//
//  DetailsSceneViewModel.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

protocol DetailsSceneViewDelegate: AnyObject {}

protocol DetailsSceneViewModel {
    var delegate: DetailsSceneViewDelegate? { get set }
    var text: String { get }
}

final class DefaultDetailsSceneViewModel: DetailsSceneViewModel {
    var delegate: DetailsSceneViewDelegate?
    @Published private(set) var text: String
    
    init(
        text: String
    ) {
        self.text = text
    }
}
