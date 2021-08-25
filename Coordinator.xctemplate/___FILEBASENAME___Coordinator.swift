import UIKit
import Coordinator

class ___VARIABLE_productName:identifier___Coordinator: WindowCoordinator, ControllerContainer, ___VARIABLE_productName:identifier___CoordinatorRoute {
    
    internal var controller: Controller!
    
    // MARK: - Life cycle

    override func start() {
        controller.router = self
        controller.configure()
    }
    
    // MARK: - Actions

}
