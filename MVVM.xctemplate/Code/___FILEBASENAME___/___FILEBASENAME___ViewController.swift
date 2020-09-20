import UIKit

class ___VARIABLE_productName___ViewController: UIViewController {

    lazy var customView: ___VARIABLE_productName___View = {
        let customView = ___VARIABLE_productName___View(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        return customView
    }()
    
    var vm: ___VARIABLE_productName___ViewModelProtocol!
    
    // MARK: - View lifecycle

    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        vm.change(lifeCycle: .didLoad)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        vm.change(lifeCycle: .willAppear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        vm.change(lifeCycle: .didAppear)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        vm.change(lifeCycle: .willDisappear)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        vm.change(lifeCycle: .didDisappear)
    }

    deinit {
        vm.change(lifeCycle: .didDeinit)
    }

    // MARK: - Private

    private func configureUI() {
        customView.makeConstraints(vc: self)
    }
}

// MARK: - Private ___VARIABLE_productName___ViewModelOutput
extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___ViewProtocol {

    func dataDidUpdate() {

    }
}
