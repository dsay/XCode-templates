import Foundation
import Coordinator

protocol ___VARIABLE_productName___CoordinatorControllerOutput: CoordinatorControllerOutput {
    
    func presentAuth()
    func presentMain()
    func presentLaunch()
    func recommendedUpdate(_ url: String)
    func requiredUpdate(_ url: String)
}

extension ___VARIABLE_productName___Coordinator {
    
    final class Controller: NSObject {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!
        
        weak var coordinator: ___VARIABLE_productName___CoordinatorControllerOutput?
        
        // MARK: - Life cycle
        func start() {
            coordinator?.presentLaunch()

            // Chech force update status recommendedUpdate(url) or requiredUpdate(url)
            // then
            // Check Autorisation status presentAuth() or presentMain()
        }
        
        // MARK: - actions

        func enterToForeground() {
            // Chech force update status recommendedUpdate or requiredUpdate
        }
        
        func enterToBackground() {

        }
        
        // MARK: - private methods
        
    }
}
