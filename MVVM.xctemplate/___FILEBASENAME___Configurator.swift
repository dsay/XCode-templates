import UIKit

class ___VARIABLE_sceneName___Configurator {

    class func configure(data: ___VARIABLE_sceneName___ViewModel.ModuleInput = ___VARIABLE_sceneName___ViewModel.ModuleInput(),
                         output: ___VARIABLE_sceneName___ViewModel.ModuleOutput? = nil) -> UIViewController
    {
        let viewController = ___VARIABLE_sceneName___ViewController()
        let viewModel = ___VARIABLE_sceneName___ViewModel(dependencies: createDependencies(), data: data)
            
        viewController.vm = viewModel
        viewModel.view = viewController
        viewModel.moduleOutput = output
            
        return viewController
    }
    
    private class func createDependencies() -> ___VARIABLE_sceneName___ViewModel.Dependencies {
        return ___VARIABLE_sceneName___ViewModel.Dependencies()
    }
}
