import UIKit

public extension UIStoryboard {

    func instantiate<T: UIViewController>() -> T {
        guard let controller = self.instantiateViewController(withIdentifier: T.identifier) as? T else {
            fatalError()
        }
        return controller
    }
}

private extension UIViewController {

    static var identifier: String {
        let type = String(describing: self)
        return type
    }
}
