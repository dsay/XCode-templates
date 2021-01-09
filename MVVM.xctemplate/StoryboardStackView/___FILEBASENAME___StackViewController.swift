import UIKit

class ___VARIABLE_productName___StackViewController: UIViewController {
    
    var viewModel: ___VARIABLE_productName___ViewModelProtocol!
    
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var vertical: UIStackView!

    // MARK: - View lifecycle
    
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
        vertical.axis = .vertical
        vertical.distribution = .fill
        vertical.isLayoutMarginsRelativeArrangement = true
    }
}

// MARK: - Private ___VARIABLE_productName___ViewModelOutput
extension ___VARIABLE_productName___StackViewController: ___VARIABLE_productName___ViewProtocol {

    func configure(_ views: [UIView]) {
        vertical.addToVerticalStack(views)
    }
    
    func dataDidUpdate() {

    }
}
