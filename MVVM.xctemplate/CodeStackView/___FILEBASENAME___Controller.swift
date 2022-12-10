import UIKit

extension ___VARIABLE_productName___ {
    
    class ViewController: BaseViewController<ViewModel, View>, ___VARIABLE_productName___ViewControllerProtocol {
                
        // MARK: - lifecycle
        
        override func configureUI() {

        }
        
        // MARK: - Private
        
        // MARK: - Private ViewControllerProtocol

        func dataDidUpdate() {
            super.configureUI()
        }
        
        func configure(_ views: [UIView]) {
            customView.vertical.addToVerticalStack(views)
        }
    }
}
