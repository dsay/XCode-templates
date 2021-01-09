import UIKit

protocol ___VARIABLE_productName___ViewProtocol: ViewModelOutput {

    func configure(_ views: [UIView])
    func dataDidUpdate()
}

protocol ___VARIABLE_productName___ViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_productName___ViewModel {

    struct Dependencies { }

    let dp: Dependencies
    
    let moduleInput: ModuleInput
    var moduleOutput: ModuleOutput?
    
    weak var view: ___VARIABLE_productName___ViewProtocol!

    init(dependencies: Dependencies, data: ModuleInput) {
        self.dp = dependencies
        self.moduleInput = data
    }
    
    // MARK: - Private

    func start() {
        
    }

    func updateData() {
        let screen: [UIView] = []

        view.configure(screen)
    }
}

// MARK: - ___VARIABLE_productName___ViewControllerOutput
extension ___VARIABLE_productName___ViewModel: ___VARIABLE_productName___ViewModelProtocol {
    
    func change(lifeCycle: LifeCycle) {
        switch lifeCycle {
        case .didLoad:
            start()
        case .willAppear:
            updateData()
        default: break
        }
    }
}
