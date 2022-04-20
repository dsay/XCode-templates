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

enum ___VARIABLE_productName:identifier___: MVVM {

    static func dependencies(_ injector: DependencyInjector) -> Dependencies {
        Dependencies()
    }
    
    static func build(injector: DependencyInjector, input: Input = Input(), output: Output? = nil) -> some SwiftUI.View {
        View(viewModel: ViewModel(with: dependencies(injector), input, output))
    }
}
