import UIKit
import Coordinator

final class ___VARIABLE_productName___Coordinator: TabBarCoordinator, ___VARIABLE_productName___CoordinatorControllerOutput {
    
    var controller: Controller!
    
    // MARK: - Life cycle
    
    override func start() {
        controller.start()
        
        let tabs = [homeTab()]
        set(tabs, animated: false)
    }
    
    // MARK: - actions

    // MARK: - private methods
    
    private func homeTab() -> NavigationCoordinator {
        // let coordinator = ...
        // coordinator.container.configure(for: .<TabBarItem>
        // returt coordinator
        fatalError()
    }
}
