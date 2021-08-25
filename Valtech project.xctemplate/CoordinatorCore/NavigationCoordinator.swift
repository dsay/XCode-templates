import UIKit

class NavigationCoordinator: Coordinator<UINavigationController> {

    func push(_ viewController: UIViewController, animated: Bool = true, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.pushViewController(viewController, animated: animated)
        }, completion: completion)
    }

    func pop(animated: Bool = true, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.popViewController(animated: animated)
        }, completion: completion)
    }

    func popToRoot(animated: Bool = true, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.popToRootViewController(animated: animated)
        }, completion: completion)
    }

    func set(_ viewControllers: [UIViewController],
             animated: Bool = true,
             completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.setViewControllers(viewControllers, animated: animated)
        }, completion: completion)
    }

    func pop(to viewController: UIViewController,
             animated: Bool = true,
             completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.popToViewController(viewController, animated: animated)
        }, completion: completion)
    }

    func present(_ viewController: UIViewController, animated: Bool = true, completion: Completion? = nil) {
        viewController.modalPresentationStyle = .overFullScreen
        container.present(viewController, animated: animated, completion: completion)
    }

    func dismiss(animated: Bool = true, completion: Completion? = nil) {
        guard container.presentedViewController != nil else {
            return
        }
        container.dismiss(animated: animated, completion: completion)
    }

    func replaceViewControllers(after: UIViewController,
                                with viewControllers: [UIViewController],
                                animated: Bool = true,
                                completion: Completion? = nil) {
        var stack = container.viewControllers
        guard !stack.isEmpty, let viewController = stack.first(where: { $0 == after }) else {
            completion?()
            return
        }
        var proceed = false
        while proceed {
            if let current = stack.last {
                if current == viewController {
                    proceed = false
                } else {
                    stack.removeLast()
                }
            }
            if stack.isEmpty { proceed = false }
        }
        stack += viewControllers
        set(stack, animated: animated, completion: completion)
    }
}
