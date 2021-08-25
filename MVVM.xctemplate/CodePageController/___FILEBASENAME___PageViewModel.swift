import Foundation

protocol ___VARIABLE_productName___PageViewProtocol: ViewModelOutput {

    func dataDidUpdate()
}

protocol ___VARIABLE_productName___PageViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_productName___PageViewModel {

    struct Dependencies { }

    let dp: Dependencies
    
    let moduleInput: ModuleInput
    var moduleOutput: ModuleOutput?
    
    weak var view: ___VARIABLE_productName___PageViewProtocol!

    init(dependencies: Dependencies, data: ModuleInput) {
        self.dp = dependencies
        self.moduleInput = data
    }
    
    // MARK: - Private

    func start() {
        
    }

    func updateData() {
        view.dataDidUpdate()
    }
}

// MARK: - ___VARIABLE_productName___PageViewControllerOutput
extension ___VARIABLE_productName___PageViewModel: ___VARIABLE_productName___PageViewModelProtocol {
    
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
