import Foundation
import SwiftUI

extension ___VARIABLE_productName:identifier___ {
    
    struct Dependencies {}
    
    struct Input {}
    
    struct Output {
        
        enum Action {}
        
        let action: (Action) -> Void
    }
}

enum ___VARIABLE_productName:identifier___: MVVMBase {

    static func dependencies() -> Dependencies {
        Dependencies()
    }
    
    static func build(input: Input = Input(), output: Output? = nil) -> some SwiftUI.View {
        View(viewModel: ViewModel(with: dependencies(), input, output))
    }
}
