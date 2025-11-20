import UIKit
import Coordinator

final class ___VARIABLE_productName___Coordinator: WindowCoordinator, ___VARIABLE_productName___CoordinatorControllerOutput {
    
    var controller: Controller!
    
    // MARK: - Life cycle
    
    override func start() {
        controller.start()
    }
    
    // MARK: - actions
    
    func appEnterToForeground() {
        controller.enterToForeground()
    }
    
    func appEnterToBackground() {
        controller.enterToBackground()
    }
    
    // MARK: - private methods
    
    func presentLaunch() {
    
    }
    
    func presentAuth() {
        
    }
    
    func presentMain() {
        
    }
    
    func requiredUpdate(_ storeUrl: String) {
        // Show required update Alert
    }
    
    func recommendedUpdate(_ storeUrl: String) {
        // Show recommended update Alert
    }
}
