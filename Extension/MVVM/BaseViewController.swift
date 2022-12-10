import UIKit

class BaseViewController<VM: ViewModelProtocol, V: ViewProtocol>: UIViewController {
    
    lazy var customView: V = { V() }()
    
    var viewModel: VM!

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
    
    public func configureUI() {
        customView.makeConstraints(vc: self)
    }
}
