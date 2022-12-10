import UIKit

enum ___VARIABLE_productName___ {
    
    struct Dependencies {

    }

    struct Input {

    }

    struct Output {
        enum Action {

        }
        
        let action: (Action) -> Void
    }
    
    static func configure(data: Input = Input(), output: Output? = nil) -> UIViewController {
        let viewController = ViewController()
        let viewModel = ViewModel(with: createDependencies(), data, output)
        
        viewController.viewModel = viewModel
        viewModel.view = viewController
        
        return viewController
    }
    
    private static func createDependencies() -> Dependencies {
        Dependencies()
    }
}
