import UIKit

extension ___VARIABLE_productName___ {
    
    class View: BaseView {
        
        @Layout var tableView = UITableView()
        
        // MARK: - lifecycle
        
        override func configureView() {
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.backgroundColor = .clear
            tableView.separatorStyle = .none
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 80
        }
        
        override func addSubviews() {
            addSubview(tableView)
        }
        
        override func makeConstraints(vc: UIViewController) {
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: topAnchor),
                tableView.leftAnchor.constraint(equalTo: leftAnchor),
                tableView.rightAnchor.constraint(equalTo: rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
    }
}
