import POPDataSource

class ___VARIABLE_sceneName___ViewController: UIViewController {

    var vm: ___VARIABLE_sceneName___ViewModelProtocol!
    
    @IBOutlet private weak var tableView: UITableView!

    private var dataSourceShim: TableViewDataSourceShim? = nil {
        didSet {
            tableView.dataSource = dataSourceShim
            tableView.delegate = dataSourceShim
            tableView.reloadData()
        }
    }
    
    // MARK: - View lifecycle

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
     
    }
}

// MARK: - Private ___VARIABLE_sceneName___ViewModelOutput
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewProtocol {

    func dataDidUpdate(_ dataSources: [TableViewDataSource]) {
        dataSourceShim = TableViewDataSourceShim(ComposedDataSource(dataSources))
    }
}
