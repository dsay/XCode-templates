import UIKit

class ___VARIABLE_productName___PageViewController: UIViewController {
    
    var viewModel: ___VARIABLE_productName___ViewModelProtocol!
    
    @IBOutlet private weak var segmentControl: UISegmentedControl!
    @IBOutlet private weak var container: UIView!

    private let pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
    
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
        addChild(pageController)
        pageController.view.frame = container.bounds
        container.addSubview(pageController.view)
        pageController.didMove(toParent: self)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageController.view.frame = view.bounds
    }
}

// MARK: - Private ___VARIABLE_productName___ViewModelOutput
extension ___VARIABLE_productName___PageViewController: ___VARIABLE_productName___ViewProtocol {

    func dataDidUpdate() {
    }
}
