import UIKit

protocol ___VARIABLE_productName___StackViewProtocol: ViewModelOutput {

    func configure(_ views: [UIView])
    func dataDidUpdate()
}

protocol ___VARIABLE_productName___StackViewModelProtocol: ViewControllerOutput {

}

class ___VARIABLE_productName___StackViewModel {

    struct Dependencies { }

    let dp: Dependencies
    
    let moduleInput: ModuleInput
    var moduleOutput: ModuleOutput?
    
    weak var view: ___VARIABLE_productName___StackViewProtocol!

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

// MARK: - ___VARIABLE_productName___StackViewControllerOutput
extension ___VARIABLE_productName___StackViewModel: ___VARIABLE_productName___StackViewModelProtocol {
    
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
