import POPDataSource

protocol ___VARIABLE_productName___TableViewProtocol: ViewModelOutput {

    func dataDidUpdate()
    func configureDataSource(_ dataSources: [TableViewDataSource])
}

protocol ___VARIABLE_productName___TableViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_productName___TableViewModel {

    struct Dependencies { }

    let dp: Dependencies
    
    let moduleInput: ModuleInput
    var moduleOutput: ModuleOutput?
    
    weak var view: ___VARIABLE_productName___TableViewProtocol!

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

// MARK: - ___VARIABLE_productName___TableControllerOutput
extension ___VARIABLE_productName___TableViewModel: ___VARIABLE_productName___TableViewModelProtocol {
    
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
