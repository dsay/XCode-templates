import POPDataSource
import UIKit

extension ___VARIABLE_productName___ {

    class ViewController: BaseViewController<ViewModel, View>, ___VARIABLE_productName___ViewControllerProtocol {
           
        private var dataSourceShim: TableViewDataSourceShim? {
            didSet {
                customView.tableView.dataSource = dataSourceShim
                customView.tableView.delegate = dataSourceShim
                customView.tableView.reloadData()
            }
        }
        
        // MARK: - lifecycle
        
        override func configureUI() {
            super.configureUI()
        }
        
        // MARK: - Private
        
        // MARK: - Private ViewControllerProtocol

        func dataDidUpdate() {
            customView.tableView.reloadData()
        }
        
        func configureDataSource(_ dataSources: [TableViewDataSource]) {
            dataSourceShim = TableViewDataSourceShim(ComposedDataSource(dataSources))
        }
    }
}
