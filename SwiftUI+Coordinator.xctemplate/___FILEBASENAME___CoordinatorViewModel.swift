import Combine
import SwiftUI

extension ___VARIABLE_productName:identifier___Coordinator {
    
    final class ViewModel: CoordinatorViewModel {
        
        var input: Input!
        var output: Output?
        
        var dependencies: Dependencies!
        
        @Published var isLoading = false
        @Published var error: Error?
        
        private var cancellables = [AnyCancellable]()
        
        // MARK: - Life cycle
        func configure() {
            
        }
        
        // MARK: - Actions

    }
}
