import Coordinator
import UIKit

enum ___VARIABLE_productName___ {
    
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
    
    static func configure(with container: UITabBarController,
                          deepLinkContainer: DeepLinkContainer,
                          input: Input = Input(),
                          output: Output? = nil) -> Coordinator
    {
        let controller = Controller(with: dependencies(), input, output)
        let coordinator = Coordinator(with: container, controller, deepLinkContainer)
        return coordinator
    }
}
