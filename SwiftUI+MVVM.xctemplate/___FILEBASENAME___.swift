import Foundation
import SwiftUI

extension ___VARIABLE_productName:identifier___ {
    
    struct Dependencies {}
    
    struct Input {}
    
    struct Output {
        
        enum Action {
            
        }
        
        let action: (Action) -> Void
    }
}

enum ___VARIABLE_productName:identifier___: MVVM {

    static var dependencies: Dependencies {
        .init()
    }
    
    static func build(input: Input = Input(), output: Output? = nil) -> some SwiftUI.View {
        View(viewModel: .init(with: dependencies, input, output))
    }
}
