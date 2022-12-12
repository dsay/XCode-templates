import Coordinator
import UIKit

extension ___VARIABLE_productName___ {
    
    final class Coordinator: WindowCoordinator<Controller>, AppCoordinatorProtocol {
        
        // MARK: - Life cycle
        
        override func start() {
            controller.coordinator = self
            controller.configure()
        }
        
        override func open(deepLink: DeepLink?) -> Bool {
            return false
        }
        
        // MARK: - CoordinatorProtocol actions
        
        func enterForeground() {
            controller.enterForeground()
        }
        
        func presentLaunch() {
            
        }
        
        func presentAuth() {
            
        }
        
        func presentMain() {
            
        }
        
        func presentEnterPinCode() {
            
        }
        
        func requiredUpdate(_ storeUrl: String) {
            
        }
        
        func recommendedUpdate(_ storeUrl: String) {
            
        }
    }
}
