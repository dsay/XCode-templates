import Foundation

extension ViewModelProtocol {
    
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?) {
        self.init()
         self.dp = dependencies
         self.input = input
         self.output = output
     }
    
    func change(lifeCycle: LifeCycle) {
        switch lifeCycle {
        case .didLoad:
            start()
        case .willAppear:
            updateData()
        default: break
        }
    }
    
    func start() {
        
    }
    
    func updateData() {
        
    }
}
