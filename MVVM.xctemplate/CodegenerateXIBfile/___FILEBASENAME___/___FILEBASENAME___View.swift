import UIKit

class ___VARIABLE_productName___View: UIView {

    let tableView = UITableView()
    
    override init(frame: CGRect = CGRect.zero) {
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
        tableView.snp.makeConstraints { make in
            make.top.equalTo(vc.view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(vc.view.safeAreaLayoutGuide.snp.bottom)
            make.leading.trailing.equalToSuperview()
        }
    }
}
