import UIKit

class ___VARIABLE_productName___TableConfigurator {

    class func configure(data: ___VARIABLE_productName___TableViewModel.ModuleInput = ___VARIABLE_productName___TableViewModel.ModuleInput(),
                         output: ___VARIABLE_productName___TableViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_productName___TableViewController()
        let viewModel = ___VARIABLE_productName___TableViewModel(dependencies: createDependencies(), data: data)
            
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private class func createDependencies() -> ___VARIABLE_productName___TableViewModel.Dependencies {
        return ___VARIABLE_productName___TableViewModel.Dependencies()
    }
}
