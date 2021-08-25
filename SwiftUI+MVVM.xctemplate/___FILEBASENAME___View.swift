import SwiftUI

extension ___VARIABLE_productName:identifier___ {
    
    struct View<ViewModel: ___VARIABLE_productName:identifier___ViewModel>: SwiftUI.View, ViewBase {
        
        @StateObject var viewModel: ViewModel
        
        var body: some SwiftUI.View {
            Text("Hello!!!")
               .modifyError(for: viewModel)
                .modifyProgress(for: viewModel)
        }
    }
}

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    
    static var previews: some View {
        ___VARIABLE_productName:identifier___.build()
    }
}
