import UIKit

class ___VARIABLE_productName___View: UIView {

    @Layout var tableView = UITableView()
    
    override init(frame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 480)) {
        super.init(frame: frame)
        configureView()
        addSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configureView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
    }

    private func addSubviews() {
        addSubview(tableView)
    }
    
    public func makeConstraints(vc: UIViewController) {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
