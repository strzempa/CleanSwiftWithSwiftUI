//
//  WelcomeSceneView.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

struct WelcomeSceneView: View {
    let viewModel: WelcomeSceneViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.text)
            Divider()
            Button(viewModel.buttonText) {
                viewModel.delegate?.didSelectButton(viewModel)
            }
        }
    }
}
