import Coordinator
import UIKit

final class ___VARIABLE_productName___Coordinator: NavigationCoordinator, ControllerContainer {
    
    var controller: Controller!
    
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
