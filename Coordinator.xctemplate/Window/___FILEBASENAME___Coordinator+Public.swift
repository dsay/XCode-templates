import Coordinator
import UIKit

extension ___VARIABLE_productName___Coordinator {
    
    struct Dependencies {

    }
    
    struct Input {
        
    }
    
    struct Output {
        enum Action {
            
        }
        
        let action: (Action) -> Void
    }
    
    static func dependencies() -> Dependencies {
        .init()
    }
    
    static func configure(with container: UIWindow,
                          deepLinkContainer: DeepLinkContainer,
                          input: Input = Input(),
                          output: Output? = nil) -> ___VARIABLE_productName___Coordinator
    {
        ___VARIABLE_productName___Coordinator(with: container, .init(with: dependencies(), input, output), deepLinkContainer)
    }
}
