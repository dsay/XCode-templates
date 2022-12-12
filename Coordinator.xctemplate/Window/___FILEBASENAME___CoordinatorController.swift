import Coordinator

extension ___VARIABLE_productName___ {
    
    final class Controller: CoordinatorController {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!
        
        // MARK: - Life cycle
        func configure(_ action: (Action) -> Void) {
            action(.presentLaunch)
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
