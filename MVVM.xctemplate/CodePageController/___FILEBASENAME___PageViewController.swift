import UIKit

class ___VARIABLE_productName___PageViewController: UIViewController {

    lazy var customView: ___VARIABLE_productName___PageView = {
        let customView = ___VARIABLE_productName___PageView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        return customView
    }()
    
    var viewModel: ___VARIABLE_productName___PageViewModelProtocol!
    
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

// MARK: - Private ___VARIABLE_productName___PageViewModelOutput
extension ___VARIABLE_productName___PageViewController: ___VARIABLE_productName___PageViewProtocol {

    func dataDidUpdate() {

    }
}
