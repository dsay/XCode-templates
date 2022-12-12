import Coordinator
import UIKit

extension ___VARIABLE_productName___ {
    
    final class Launch1Coordinator: WindowCoordinator<Controller> {
                
        // MARK: - Life cycle
        
        override func start() {
            controller.configure() { [weak self] action in
                switch action {
                case .presentAuth:
                    self?.presentAuth()
                    
                case .presentMain:
                    self?.presentMain()
                    
                case .presentLaunch:
                    self?.presentLaunch()
                    
                case .recommendedUpdate(let url):
                    self?.recommendedUpdate(url)
                    
                case .requiredUpdate(let url):
                    self?.requiredUpdate(url)
                }
            }
        }
        
        override func open(deepLink: DeepLink?) -> Bool {
            return false
        }
        
        // MARK: - actions
        
        func enterForeground() {
            controller.enterForeground()
        }
        
        // MARK: - private methods
        
        private func presentLaunch() {
            
        }
        
        private func presentAuth() {
            
        }
        
        private func presentMain() {
            
        }
        
        private func requiredUpdate(_ storeUrl: String) {
            // Show required update Alert
        }
        
        private func recommendedUpdate(_ storeUrl: String) {
            // Show recommended update Alert
        }
    }
}
