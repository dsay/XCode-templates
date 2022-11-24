import UIKit

class ___VARIABLE_productName___Controller: UIViewController {

    lazy var customView: ___VARIABLE_productName___View = {
        ___VARIABLE_productName___View()
    }()
    
    var viewModel: ___VARIABLE_productName___ViewModelProtocol!
    
    // MARK: - View lifecycle

    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        viewModel.change(lifeCycle: .didLoad)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.change(lifeCycle: .willAppear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.change(lifeCycle: .didAppear)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewModel.change(lifeCycle: .willDisappear)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.change(lifeCycle: .didDisappear)
    }

    deinit {
        viewModel.change(lifeCycle: .didDeinit)
    }

    // MARK: - Private

    private func configureUI() {
        customView.makeConstraints(vc: self)
    }
}

// MARK: - Private ___VARIABLE_productName___ViewModelOutput
extension ___VARIABLE_productName___Controller: ___VARIABLE_productName___ViewProtocol {

    func configure(_ views: [UIView]) {
        customView.vertical.addToVerticalStack(views)
    }
    
    func dataDidUpdate() {

    }
}
