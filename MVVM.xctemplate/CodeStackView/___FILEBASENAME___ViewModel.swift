import Foundation

protocol ___VARIABLE_productName___ViewControllerProtocol: ViewControllerProtocol{

    func dataDidUpdate()
}

protocol ___VARIABLE_productName___ViewModelProtocol: ViewModelProtocol {

}

extension ___VARIABLE_productName___ {
    
    final class ViewModel: ___VARIABLE_productName___ViewModelProtocol {
        
        var dp: Dependencies!
        
        var input: Input!
        var output: Output?
        
        weak var view: ___VARIABLE_productName___ViewControllerProtocol?

        // MARK: - lifecycle

        func start() {
            
        }
        
        func updateData() {
            view?.dataDidUpdate()
        }
        
        // MARK: - Private
        
        // MARK: - ViewModelProtocol
    }
}
