import Coordinator

protocol AppCoordinatorProtocol: AnyObject {
    func presentAuth()
    func presentMain()
    func presentLaunch()
    func recommendedUpdate(_ storeUrl: String)
    func requiredUpdate(_ storeUrl: String)
}

extension ___VARIABLE_productName___ {
    
    final class Controller: CoordinatorController {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!
        
        weak var coordinator: AppCoordinatorProtocol?

        // MARK: - Life cycle
        func configure() {
            coordinator?.presentLaunch()
            
            // Chech force update status .recommendedUpdate or .requiredUpdate
            // then
            // Check Autorisation status .presentAuth or .presentMain
        }
        
        // MARK: - actions

        func enterForeground() {
            // Chech force update status recommendedUpdate or requiredUpdate
        }
        
        // MARK: - private methods
        
    }
}
