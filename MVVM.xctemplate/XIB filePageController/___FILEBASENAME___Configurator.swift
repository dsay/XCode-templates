import UIKit

class ___VARIABLE_productName___Configurator {

    class func configure(data: ___VARIABLE_productName___ViewModel.ModuleInput = ___VARIABLE_productName___ViewModel.ModuleInput(),
                         output: ___VARIABLE_productName___ViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_productName___PageViewController()

        let viewModel = ___VARIABLE_productName___ViewModel(dependencies: createDependencies(), data: data)
            
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private class func createDependencies() -> ___VARIABLE_productName___ViewModel.Dependencies {
        return ___VARIABLE_productName___ViewModel.Dependencies()
    }
}
