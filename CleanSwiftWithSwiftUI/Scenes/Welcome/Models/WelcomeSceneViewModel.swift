//
//  WelcomeSceneViewModel.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

protocol WelcomeSceneViewDelegate: AnyObject {
    func didSelectButton(_ sender: WelcomeSceneViewModel?)
}

protocol WelcomeSceneViewModel {
    var delegate: WelcomeSceneViewDelegate? { get set }
    var text: String { get }
    var buttonText: String { get }
}

final class DefaultWelcomeSceneViewModel: WelcomeSceneViewModel {
    var delegate: WelcomeSceneViewDelegate?
    @Published private(set) var text: String
    @Published private(set) var buttonText: String
    
    init(
        text: String,
        buttonText: String
    ) {
        self.text = text
        self.buttonText = buttonText
    }
}
