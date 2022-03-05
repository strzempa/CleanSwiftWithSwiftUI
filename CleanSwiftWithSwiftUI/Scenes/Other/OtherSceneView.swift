//
//  OtherSceneView.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

protocol OtherSceneViewDelegate: AnyObject {}

protocol OtherSceneViewModel {
    var delegate: OtherSceneViewDelegate? { get set }
}

// swiftlint:disable colon
final class DefaultOtherSceneViewModel: 
    OtherSceneViewModel {
    var delegate: OtherSceneViewDelegate?
}

struct OtherSceneView: View {
    let viewModel: OtherSceneViewModel
    
    var body: some View {
        VStack {
            Text("TODO")
        }
    }
}