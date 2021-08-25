//___FILEHEADER___

import SwiftUI

struct Screen___VARIABLE_screenName___: View {
    
    // MARK: - Screen Settings
    // private let width = UIScreen.main.bounds.width // 428px-iPhone 12 Pro Max
    // private let height = UIScreen.main.bounds.height // 926px-iPhone 12 Pro Max
    // private var scaleView: CGFloat { width / 428 } // Screen scales according to width
    
    // MARK: - Properties
    // var, let
    // private var, private let
    
    // MARK: - ViewModel/EnvironmentObject
    // @ObservedObject vM: ViewModel
    
    // MARK: - Initialization
    // init(viewModel: ViewModel = ViewModel()) {
    //     _vM = ObservedObject(wrappedValue: viewModel)
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
struct Screen___VARIABLE_screenName____Previews: PreviewProvider {
    static var previews: some View {
        Screen___VARIABLE_screenName___()
    }
}
/* If View contains state then use ViewWrapper
struct Screen___VARIABLE_screenName____Previews: PreviewProvider {
    private struct ViewWrapper: View {
        // @State var count: Int = 0
        var body: some View {
            Screen___VARIABLE_screenName___()
        }
    }
    
    static var previews: some View {
        ViewWrapper()
            .previewLayout(.sizeThatFits)
    }
}
*/
