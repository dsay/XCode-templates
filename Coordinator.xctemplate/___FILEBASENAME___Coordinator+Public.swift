import Coordinator
import UIKit

extension ___VARIABLE_productName:identifier___Coordinator {
    
    struct Output {

    }
    
    struct Input {

    }
    
    struct Dependencies {

    }
    
    static func dependencies() -> Dependencies {
        Dependencies()
    }
    
    static func build(container: UIWindow, input: Input = Input(), output: Output? = nil) -> ___VARIABLE_productName:identifier___Coordinator {
        ___VARIABLE_productName:identifier___Coordinator(with: container, Controller(with: dependencies(), input, output))
    }
}
