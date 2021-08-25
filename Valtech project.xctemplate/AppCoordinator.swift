import UIKit

class AppCoordinator: WindowCoordinator {
    
    override func start() {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let initialViewController = storyboard.instantiateInitialViewController() {
            setRoot(viewControler: initialViewController)
        }
    }
}
