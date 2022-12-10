import UIKit

enum LifeCycle {
    case didLoad, didAppear, willAppear, didDisappear, willDisappear, didDeinit
}

protocol ViewModelProtocol: AnyObject {
    
    associatedtype Dependencies
    associatedtype Input
    associatedtype Output

    var dp: Dependencies! { get set }
    
    var input: Input! { get set }
    var output: Output? { get set }
        
    init()
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?)

    func change(lifeCycle: LifeCycle)
    func start()
    func updateData()
}

protocol ViewControllerProtocol: ActivityObserver {

}

protocol ViewProtocol: UIView {
    
    init()
    
    func makeConstraints(vc: UIViewController)
}
