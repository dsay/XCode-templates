import Coordinator
import UIKit

extension ___VARIABLE_productName___ {
    
    final class Coordinator: ViewControllerCoordinator<Controller> {
                
        // MARK: - Life cycle
        
        override func start() {
            controller.activity = container
            controller.configure()
        }
        
        override func open(deepLink: DeepLink?) -> Bool {
            return false
        }
        
        // MARK: - actions
        
        // MARK: - private methods
        
    }
}

