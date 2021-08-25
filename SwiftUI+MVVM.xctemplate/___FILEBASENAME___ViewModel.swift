import Foundation
import Combine

protocol ___VARIABLE_productName:identifier___ViewModel: ViewModelBase {
    
}

extension ___VARIABLE_productName:identifier___ {
    
    final class ViewModel: ___VARIABLE_productName:identifier___ViewModel {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!

        var isLoading: Bool = false
        var error: Error?
    
        fileprivate var cancellables = Set<AnyCancellable>()

        // MARK: - Life cycle

        func configure() {

        }
        
        // MARK: - Private methods

        
        // MARK: - Actions

    }
}
