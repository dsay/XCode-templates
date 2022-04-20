import Coordinator
import UIKit

final class ___VARIABLE_productName___Coordinator: TabBarCoordinator, ControllerContainer {
    
    var controller: Controller!
    
    // MARK: - Life cycle
    
    override func start() {
        controller.activity = container
        controller.configure()
        
        let tabs = configureTabs()
        set(tabs, animated: false)
    }
    
    override func open(deepLink: DeepLink?) -> Bool {
        return false
    }
    
    // MARK: - actions

    // MARK: - private methods
    
    private func configureTabs() -> [UIViewController] {
        [oneTab()].map({ $0.container })
    }
    
    private func oneTab() -> NavigationCoordinator {
        // let coordinator = ...
        // coordinator.configure(for: .<TabBarItem>
        // returt coordinator
        fatalError()
    }
}
