//___FILEHEADER___

import SwiftUI

struct View___VARIABLE_viewName___: View {
    
    // MARK: - Screen Settings
    // private let width = UIScreen.main.bounds.width // 428px-iPhone 12 Pro Max
    // private let height = UIScreen.main.bounds.height // 926px-iPhone 12 Pro Max
    // private var scaleView: CGFloat { width / 428 } // Screen scales according to width
    
    // MARK: - Properties
    // var, let
    // private var, private let
    
    // MARK: - ViewModel/EnvironmentObject
    // @StateObject vM: ViewModel
    
    // MARK: - Initialization
    // init(viewModel: ViewModel = ViewModel()) {
    //     _vM = StateObject(wrappedValue: viewModel)
    // }
    
    // MARK: - View
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    // MARK: - Functions
    // var, let
    // private var, private let
    
    // MARK: - ViewProperties
    // var, let
    // private var, private let
    
}

// ////////////////// //
//   PREVIEW SECTION  //
// ////////////////// //
struct View___VARIABLE_viewName____Previews: PreviewProvider {
    static var previews: some View {
        View___VARIABLE_viewName___()
    }
}
/* If View contains state then use ViewWrapper
struct View___VARIABLE_viewName____Previews: PreviewProvider {
    private struct ViewWrapper: View {
        // @State var count: Int = 0
        var body: some View {
            View___VARIABLE_viewName___()
        }
    }
    
    static var previews: some View {
        ViewWrapper()
            .previewLayout(.sizeThatFits)
    }
}
*/
