import UIKit

class ___VARIABLE_productName___PageConfigurator {

    class func configure(data: ___VARIABLE_productName___PageViewModel.ModuleInput = ___VARIABLE_productName___PageViewModel.ModuleInput(),
                         output: ___VARIABLE_productName___PageViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_productName___PageViewController()
        let viewModel = ___VARIABLE_productName___PageViewModel(dependencies: createDependencies(), data: data)
            
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private class func createDependencies() -> ___VARIABLE_productName___PageViewModel.Dependencies {
        return ___VARIABLE_productName___PageViewModel.Dependencies()
    }
}
