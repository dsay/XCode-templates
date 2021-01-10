import UIKit

@propertyWrapper
public struct Layout<T: UIView> {
    
    public var wrappedValue: T {
        didSet {
            wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension NSLayoutConstraint {
    
    func setPriority(_ priority: Float) -> Self {
        self.priority = UILayoutPriority(rawValue: priority)
        return self
    }
}
