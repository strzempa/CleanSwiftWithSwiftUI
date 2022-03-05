//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import SwiftUI

protocol ___VARIABLE_sceneName___SceneViewDelegate: AnyObject {}

protocol ___VARIABLE_sceneName___SceneViewModel {
    var delegate: ___VARIABLE_sceneName___SceneViewDelegate? { get set }
}

// swiftlint:disable colon
final class Default___VARIABLE_sceneName___SceneViewModel: 
    ___VARIABLE_sceneName___SceneViewModel {
    var delegate: ___VARIABLE_sceneName___SceneViewDelegate?
}

struct ___VARIABLE_sceneName___SceneView: View {
    let viewModel: ___VARIABLE_sceneName___SceneViewModel
    
    var body: some View {
        VStack {
            Text("TODO")
        }
    }
}