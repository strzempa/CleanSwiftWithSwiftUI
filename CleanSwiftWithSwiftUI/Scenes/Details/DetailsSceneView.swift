//
//  DetailsSceneView.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

struct DetailsSceneView: View {
    let viewModel: DetailsSceneViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.text)
        }
    }
}
