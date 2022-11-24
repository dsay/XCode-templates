import UIKit

extension ___VARIABLE_productName___ViewModel {

    struct Dependencies {

    }

    struct ModuleInput {

    }

    struct ModuleOutput {
        enum Action {

        }
        
        let action: (Action) -> Void
    }

}

struct ___VARIABLE_productName___ {

    static func configure(data: ___VARIABLE_productName___ViewModel.ModuleInput = ___VARIABLE_productName___ViewModel.ModuleInput(),
                         output: ___VARIABLE_productName___ViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_productName___ViewController()
        let viewModel = ___VARIABLE_productName___ViewModel(dependencies: createDependencies(), data: data)
            
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private static func createDependencies() -> ___VARIABLE_productName___ViewModel.Dependencies {
        return ___VARIABLE_productName___ViewModel.Dependencies()
    }
}
