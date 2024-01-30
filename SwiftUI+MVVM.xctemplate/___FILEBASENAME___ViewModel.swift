import Foundation
import Combine

extension ___VARIABLE_productName:identifier___ {
    
    final class ViewModel: MVVMViewModel {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!

        @Published var isLoading: Bool = false
        @Published var error: Error?
    
        // MARK: - Life cycle

        func configure() {

        }
        
        func start() {

        }
        
        // MARK: - Private methods
        
        // MARK: - Actions
    }
}
