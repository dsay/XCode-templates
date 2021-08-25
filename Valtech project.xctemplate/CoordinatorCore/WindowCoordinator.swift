import UIKit

class WindowCoordinator: Coordinator<UIWindow> {

    func setRoot(viewControler: UIViewController) {
        container.rootViewController = viewControler

        let options: UIView.AnimationOptions = .transitionCrossDissolve

        let duration: TimeInterval = 0.35

        UIView.transition(with: container,
                          duration: duration,
                          options: options,
                          animations: { },
                          completion: { _ in })
    }

}
