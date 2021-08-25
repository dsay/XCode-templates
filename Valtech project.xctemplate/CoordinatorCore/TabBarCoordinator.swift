import UIKit

class TabBarCoordinator: Coordinator<UITabBarController> {

    func set(_ viewControllers: [UIViewController], animated: Bool = true, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.setViewControllers(viewControllers, animated: animated)
        }, completion: completion)
    }

    func select(index: Int, completion: Completion?) {
        wrapAnimation(in: {
            self.container.selectedIndex = index
        }, completion: completion)
    }

}
