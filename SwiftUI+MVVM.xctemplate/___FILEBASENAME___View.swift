import SwiftUI

extension ___VARIABLE_productName:identifier___ {
    
    struct View<ViewModel: ___VARIABLE_productName:identifier___ViewModel>: SwiftUI.View, MVVMView {
        
        @StateObject var viewModel: ViewModel
        
        var body: some SwiftUI.View {
            Text("Hello!!!")
               .modifyError(for: viewModel)
               .modifyProgress(for: viewModel)
        }
    }
}
