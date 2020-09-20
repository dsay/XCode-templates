import Foundation

protocol ___VARIABLE_sceneName___ViewProtocol: ViewModelOutput {

    func dataDidUpdate()
}

protocol ___VARIABLE_sceneName___ViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_sceneName___ViewModel {

    struct Dependencies { }

    let dp: Dependencies
    
    let moduleInput: ModuleInput
    var moduleOutput: ModuleOutput?
    
    weak var view: ___VARIABLE_sceneName___ViewProtocol!

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

// MARK: - ___VARIABLE_sceneName___ViewControllerOutput
extension ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {
    
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
