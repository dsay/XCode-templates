import UIKit
import Coordinator

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
                          input: Input = Input(),
                          output: Output? = nil) -> ___VARIABLE_productName___Coordinator {
        let coordinator = ___VARIABLE_productName___Coordinator(container: container)
        let controller = ___VARIABLE_productName___Coordinator.Controller()
        controller.input = input
        controller.output = output
        controller.dependencies = dependencies()
        controller.coordinator = coordinator
        coordinator.controller = controller
        return coordinator
    }
}
