import UIKit

class ___VARIABLE_productName___StackConfigurator {

    class func configure(data: ___VARIABLE_productName___StackViewModel.ModuleInput = ___VARIABLE_productName___StackViewModel.ModuleInput(),
                         output: ___VARIABLE_productName___StackViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_productName___StackController()
        let viewModel = ___VARIABLE_productName___StackViewModel(dependencies: createDependencies(), data: data)
            
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private class func createDependencies() -> ___VARIABLE_productName___StackViewModel.Dependencies {
        return ___VARIABLE_productName___StackViewModel.Dependencies()
    }
}
