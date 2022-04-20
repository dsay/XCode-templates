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
    
    static func configure(with container: UIViewController,
                          deepLinkContainer: DeepLinkContainer,
                          input: Input = Input(),
                          output: Output? = nil) -> ViewControllerCoordinator
    {
        ___VARIABLE_productName___Coordinator(with: container, .init(with: dependencies(), input, output), deepLinkContainer)
    }
}
