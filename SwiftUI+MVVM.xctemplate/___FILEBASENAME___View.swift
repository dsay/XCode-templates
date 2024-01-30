import SwiftUI

extension ___VARIABLE_productName:identifier___ {
    
    struct View: SwiftUI.View, MVVMView {
        
        @StateObject var viewModel: ViewModel
        
        var body: some SwiftUI.View {
            ScrollView {
                VStack(spacing: 10) {
                    
                }
                .modifyError(for: viewModel)
                .modifyProgress(for: viewModel)
            }
            .clipped()
            .onAppear(perform: viewModel.start)
        }
    }
}
