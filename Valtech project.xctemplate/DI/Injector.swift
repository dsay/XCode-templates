import UIKit

@propertyWrapper
struct Injector<T> {

    var wrappedValue: T {
        get {
            return inject()
        }
        set {
            ServiceLocator.shared.register(service: newValue)
        }
    }
}
