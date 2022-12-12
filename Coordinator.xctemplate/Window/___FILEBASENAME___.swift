import Coordinator
import UIKit

enum ___VARIABLE_productName___ {
    
    struct Dependencies {

    }
    
    struct Input {
        
    }
    
    struct Output {
        enum Action {
            case presentAuth
            case presentMain
            case presentActivation
            case recommendedUpdate(String)
            case requiredUpdate(String)
        }
        
        let action: (Action) -> Void
    }
    
    static func dependencies() -> Dependencies {
        .init()
    }
    
    static func configure(with container: UIWindow,
                          deepLinkContainer: DeepLinkContainer,
                          input: Input = Input(),
                          output: Output? = nil) -> Coordinator
    {
        let controller = Controller(with: dependencies(), input, output)
        let coordinator = Coordinator(with: container, controller, deepLinkContainer)
        return coordinator
    }
}