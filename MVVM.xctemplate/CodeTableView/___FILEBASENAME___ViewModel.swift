import POPDataSource

protocol ___VARIABLE_productName___ViewProtocol: ViewModelOutput {

    func dataDidUpdate()
    func configureDataSource(_ dataSources: [TableViewDataSource])
}

protocol ___VARIABLE_productName___ViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_productName___ViewModel {

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
        let dataSources: [TableViewDataSource] = []
        view.configureDataSource(dataSources)
    }
}

// MARK: - ___VARIABLE_productName___ControllerOutput
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
