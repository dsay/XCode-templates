import SwiftUI
import Combine

extension ___VARIABLE_productName:identifier___Coordinator {
    
    struct Dependencies {
        
    }
    
    struct Input {
        
    }
    
    struct Output {
        enum Action {
            
        }
        
        let action: (Action) -> Void
    }
}

struct ___VARIABLE_productName:identifier___Coordinator: Coordinator {
    
    static func dependencies(_ injector: DependencyInjector) -> Dependencies {
        .init()
    }
    
    static func build(injector: DependencyInjector, input: Input = Input(), output: Output? = nil) -> some SwiftUI.View {
        View(injector: injector, viewModel: .init(with: dependencies(injector), input, output))
    }
}
